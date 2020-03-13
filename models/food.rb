require_relative("../db/sql_runner")

class Food

  attr_reader :id
  attr_accessor :name, :type

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO foods
            (name,
            type)
            VALUES
            ($1, $2)
            RETURNING id"
    values = [@name, @type]
    food = SqlRunner.run(sql, values).first
    @id = food['id'].to_i
  end

  def update()
    sql = "UPDATE foods SET
          (name,
          type)
           =
           ($1, $2)
           WHERE id = $3"
    values = [@name, @type, @id]
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
    sql = "SELECT * FROM foods"
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
end
