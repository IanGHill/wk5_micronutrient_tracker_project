require_relative("../db/sql_runner")

class NutrientLevel

  attr_reader :id, :foods_id, :nutrients_id
  attr_accessor :nutrient_level

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @foods_id = options['foods_id'].to_i
    @nutrients_id = options['nutrients_id'].to_i
    @nutrient_level = options['nutrient_level'].to_f
  end

  def save()
    sql = "INSERT INTO nutrient_levels
            (foods_id,
            nutrients_id,
            nutrient_level
          )
            VALUES
            ($1, $2, $3)
            RETURNING id"
    values = [@foods_id, @nutrients_id, @nutrient_level]
    nutrient_level = SqlRunner.run(sql, values).first
    @id = nutrient_level['id'].to_i
  end

  def update()
    sql = "UPDATE nutrient_levels SET
          (foods_id,
          nutrients_id,
          nutrient_level)
           =
           ($1, $2, $3)
           WHERE id = $4"
    values = [@foods_id, @nutrients_id, @nutrient_level, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM nutrient_levels"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM nutrient_levels
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT * FROM nutrient_levels"
    nutrient_levels = SqlRunner.run( sql )
    result = nutrient_levels.map { |nutrient_level| NutrientLevel.new( nutrient_level ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM nutrient_levels WHERE id = $1"
    values = [id]
    nutrient_level = SqlRunner.run( sql, values )
    result = NutrientLevel.new( nutrient_level.first )
    return result
  end

  def name
    sql = "SELECT nutrients.* FROM nutrient_levels
          INNER JOIN nutrients
          ON nutrients.id = nutrient_levels.nutrients_id
          WHERE nutrient_levels.nutrients_id = $1
          GROUP BY nutrients.id"
    values = [@nutrients_id]
    nutrient = SqlRunner.run( sql, values )
    result = Nutrient.new( nutrient.first )
    return result.name
  end
  # def self.name(id)
  #   sql = "SELECT nutrient.* FROM nutrient_levels
  #         INNER JOIN nutrients
  #         ON nutrients.id = nutrient_levels.nutrients_id
  #         WHERE nutrient_levels.nutrients_id = $1
  #         GROUP BY nutrients.id"
  #   values = [id]
  #   nutrient = SqlRunner.run( sql, values )
  #   result = Nutrient.new( nutrient.first )
  #   return result
  # end
end
