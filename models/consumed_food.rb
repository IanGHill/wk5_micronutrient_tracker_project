require_relative("../db/sql_runner")
require_relative("nutrient_level")

class ConsumedFood

  attr_reader :id
  attr_accessor :foods_id, :mealtimes_id, :quantity

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @foods_id= options['foods_id'].to_i
    @mealtimes_id = options['mealtimes_id'].to_i
    @quantity = options['quantity']
  end

  def save()
    sql = "INSERT INTO consumed_foods
            (foods_id,
            mealtimes_id,
            quantity)
            VALUES
            ($1, $2, $3)
            RETURNING id"
    values = [@foods_id, @mealtimes_id, @quantity]
    consumed_food = SqlRunner.run(sql, values).first
    @id = consumed_food['id'].to_i
  end

  def update()
    sql = "UPDATE consumed_foods SET
          (foods_id,
          mealtimes_id,
          quantity)
           =
           ($1, $2, $3)
           WHERE id = $4"
    values = [@foods_id, @mealtimes_id, @quantity, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM consumed_foods"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM consumed_foods
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT * FROM consumed_foods"
    consumed_foods = SqlRunner.run( sql )
    result = consumed_foods.map { |consumed_food| ConsumedFood.new( consumed_food ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM consumed_foods WHERE id = $1"
    values = [id]
    consumed_food = SqlRunner.run( sql, values )
    result = ConsumedFood.new( consumed_food.first )
    return result
  end

  def self.nutrients(foods_id)
    sql = "SELECT nutrient_levels.* FROM consumed_foods
          INNER JOIN nutrient_levels ON consumed_foods.foods_id = nutrient_levels.foods_id
          WHERE consumed_foods.foods_id = $1"
    values = [foods_id]
    nutrients = SqlRunner.run( sql, values )
    result = nutrients.map{|nutrient| NutrientLevel.new(nutrient)}
  end

  def nutrients
    sql = "SELECT nutrient_levels.* FROM consumed_foods
          INNER JOIN nutrient_levels ON consumed_foods.foods_id = nutrient_levels.foods_id
          WHERE consumed_foods.id = $1"
    values = [@id]
    nutrients = SqlRunner.run( sql, values )
    result = nutrients.map{|nutrient| NutrientLevel.new(nutrient)}
  end

  def nutrients_by_qty
    sql = "SELECT nutrient_levels.id,
                  nutrient_levels.nutrients_id,
                  ((nutrient_levels.nutrient_level * consumed_foods.quantity) /100) AS nutrient_level
          FROM consumed_foods
          INNER JOIN nutrient_levels ON consumed_foods.foods_id = nutrient_levels.foods_id
          WHERE consumed_foods.id = $1"
    values = [@id]
    nutrients = SqlRunner.run( sql, values )
    result = nutrients.map{|nutrient| NutrientLevel.new(nutrient)}
  end

end
