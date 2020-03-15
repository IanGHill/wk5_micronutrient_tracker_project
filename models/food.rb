require_relative("../db/sql_runner")

class Food

  attr_reader :id
  attr_accessor :name, :food_types_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @food_types_id = options['food_types_id']
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

  def update()
    sql = "UPDATE foods SET
          (name,
          food_types_id)
           =
           ($1, $2)
           WHERE id = $3"
    values = [@name, @food_types_id, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM foods;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM foods
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
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

#  Used to find all of the available foods of a particular type (e.g. give me all varieties of fruit)
  def self.find_by_type( type )
    sql = "SELECT foods.name
            FROM foods
            INNER JOIN food_types
            ON foods.food_types_id = food_types.id
            WHERE foods.food_types_id = $1"
    values = [type]
    foods = SqlRunner.run( sql, values )
    result = foods.map { |food| Food.new( food ) }
    return result
  end
end
