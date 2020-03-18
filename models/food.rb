require_relative("../db/sql_runner")

class Food

  attr_reader :id, :name, :food_types_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @food_types_id = options['food_types_id'].to_i
  end

  def save()
    sql = "INSERT INTO foods
            (name,
            food_types_id)
            VALUES
            ($1, $2)
            RETURNING id"
    values = [@name, @food_types_id]
    food = SqlRunner.run(sql, values).first
    @id = food['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM foods;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM foods
           ORDER BY name"
    foods = SqlRunner.run( sql )
    result = foods.map { |food| Food.new( food ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM foods WHERE id = $1"
    values = [id]
    food = SqlRunner.run( sql, values )
    result = Food.new( food.first )
    return result
  end

  def self.find_favourites
    sql = "SELECT foods.*
           FROM foods
           INNER JOIN food_types
           ON foods.food_types_id = food_types.id
           WHERE food_types.name = 'Favourites'"
    foods = SqlRunner.run(sql)
    result = foods.map { |food| Food.new( food ) }
    return result
  end

  def minerals()
    sql = "SELECT nutrients.id,
		              nutrients.name,
                  nutrients.type,
                  nutrients.rda,
                  nutrients.uom,
                  nutrient_levels.nutrient_level,
    			        (SELECT (nutrient_levels.nutrient_level / nutrients.rda * 100))
                  AS percentage_rda
           FROM nutrient_levels
           INNER JOIN nutrients
           ON nutrients.id = nutrient_levels.nutrients_id
           WHERE nutrient_levels.foods_id = $1
           AND nutrients.type = 'mineral'
           ORDER BY nutrient_levels.nutrients_id"
    values = [@id]
    minerals = SqlRunner.run(sql, values)
    return minerals
  end

  def vitamins()
    sql = "SELECT nutrients.id,
                  nutrients.name,
                  nutrients.type,
                  nutrients.rda,
                  nutrients.uom,
                  nutrient_levels.nutrient_level,
                  (SELECT (nutrient_levels.nutrient_level / nutrients.rda * 100))
                  AS percentage_rda
           FROM nutrient_levels
           INNER JOIN nutrients
           ON nutrients.id = nutrient_levels.nutrients_id
           WHERE nutrient_levels.foods_id = $1
           AND nutrients.type = 'vitamin'
           ORDER BY nutrient_levels.nutrients_id"
    values = [@id]
    vitamins = SqlRunner.run(sql, values)
    return vitamins
  end
end
