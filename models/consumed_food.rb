require_relative("../db/sql_runner")
require_relative("nutrient_level")
require ('pry-byebug')

class ConsumedFood

  attr_reader :id
  attr_accessor :foods_id, :mealtimes_id, :quantity, :group_as_favourite

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @foods_id= options['foods_id'].to_i
    @mealtimes_id = options['mealtimes_id'].to_i
    @quantity = options['quantity'].to_i
    @group_as_favourite = options['group_as_favourite']
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
          quantity,
          group_as_favourite)
           =
           ($1, $2, $3, $4)
           WHERE id = $5"
    values = [@foods_id, @mealtimes_id, @quantity, @group_as_favourite, @id]
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
    sql = "SELECT  *
          FROM     consumed_foods
          ORDER BY id"
    consumed_foods = SqlRunner.run( sql )
    result = consumed_foods.map { |consumed_food| ConsumedFood.new( consumed_food ) }
    return result
  end

  def self.all_meal_details()
    sql = "SELECT    consumed_foods.id,
                     mealtimes.name AS mealtime_name,
		                 foods.name     AS food_name,
		                 food_types.name AS food_type_name,
		                 consumed_foods.quantity
          FROM       consumed_foods
          INNER JOIN mealtimes
          ON         mealtimes.id = consumed_foods.mealtimes_id
          INNER JOIN foods
          ON         foods.id = consumed_foods.foods_id
          INNER JOIN food_types
          ON         foods.food_types_id = food_types.id
          ORDER BY   mealtimes_id, consumed_foods.id"
    consumed_foods = SqlRunner.run( sql )
    return consumed_foods
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

# Brings back complete nutritional information for a new favourite grouped food
  def self.fav_nutrients_total
    sql = "SELECT nutrients.id,
		              nutrients.name
                  (SELECT SUM (nutrient_levels.nutrient_level * consumed_foods.quantity /100))
                  AS total_nutrient_level
           FROM consumed_foods
           INNER JOIN nutrient_levels
           ON consumed_foods.foods_id = nutrient_levels.foods_id
           INNER JOIN nutrients
           ON nutrients.id = nutrient_levels.nutrients_id
           where consumed_foods.group_as_favourite = TRUE
           GROUP BY nutrients.id,
                    nutrients.name
           ORDER BY nutrients.id"
    total_nutrients = SqlRunner.run(sql)
    return total_nutrients
  end

# Brings back complete MINERAL nutritional information for all of the foods consumed
  def self.nutrients_total_minerals
    sql = "SELECT nutrients.id,
		              nutrients.name,
                  nutrients.type,
                  nutrients.rda,
                  nutrients.uom,
                  (SELECT SUM (nutrient_levels.nutrient_level * consumed_foods.quantity /100))
                  AS total_nutrient_level,
    			        (SELECT (SUM (nutrient_levels.nutrient_level * consumed_foods.quantity /100))/rda*100)
                  AS percentage_rda
           FROM consumed_foods
           INNER JOIN nutrient_levels
           ON consumed_foods.foods_id = nutrient_levels.foods_id
           INNER JOIN nutrients
           ON nutrients.id = nutrient_levels.nutrients_id
           WHERE nutrients.type = 'mineral'
           GROUP BY nutrients.id,
                    nutrients.name,
                    nutrients.type,
                    nutrients.rda,
                    nutrients.uom
           ORDER BY nutrients.id"
    total_minerals = SqlRunner.run(sql)
    return total_minerals
  end

# Brings back complete VITAMIN nutritional information for all of the foods consumed
  def self.nutrients_total_vitamins
    sql = "SELECT nutrients.id,
		              nutrients.name,
                  nutrients.type,
                  nutrients.rda,
                  nutrients.uom,
                  (SELECT SUM (nutrient_levels.nutrient_level * consumed_foods.quantity /100))
                  AS total_nutrient_level,
    			        (SELECT (SUM (nutrient_levels.nutrient_level * consumed_foods.quantity /100))/rda*100)
                  AS percentage_rda
           FROM consumed_foods
           INNER JOIN nutrient_levels
           ON consumed_foods.foods_id = nutrient_levels.foods_id
           INNER JOIN nutrients
           ON nutrients.id = nutrient_levels.nutrients_id
           WHERE nutrients.type = 'vitamin'
           GROUP BY nutrients.id,
                    nutrients.name,
                    nutrients.type,
                    nutrients.rda,
                    nutrients.uom
           ORDER BY nutrients.id"
    total_minerals = SqlRunner.run(sql)
    return total_minerals
  end

  def reset_group_as_favourite()
    sql = "UPDATE consumed_foods SET group_as_favourite = 'false'"
    SqlRunner.run( sql)
  end


end
