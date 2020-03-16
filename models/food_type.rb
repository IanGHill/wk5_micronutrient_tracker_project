require_relative("../db/sql_runner")

class FoodType

  attr_reader :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO food_types
            (name)
            VALUES
            ($1)
            RETURNING id"
    values = [@name]
    food_type = SqlRunner.run(sql, values).first
    @id = food_type['id'].to_i
  end

  def update()
    sql = "UPDATE food_types
           SET name = $1
           WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE
           FROM food_types;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE
           FROM food_types
           WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT *
           FROM food_types
           ORDER BY name"
    food_types = SqlRunner.run( sql )
    result = food_types.map { |food_type| FoodType.new( food_type ) }
    return result
  end

  def self.find_by_name(name)
    sql = "SELECT *
           FROM food_types
           WHERE name = $1"
    values = [name]
    food_type = SqlRunner.run( sql, values )
    result = FoodType.new( food_type.first )
    return result
  end

  def self.find( id )
    sql = "SELECT *
           FROM food_types
           WHERE id = $1"
    values = [id]
    food_type = SqlRunner.run( sql, values )
    result = FoodType.new( food_type.first )
    return result
  end

end
