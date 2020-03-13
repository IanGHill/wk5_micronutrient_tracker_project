require_relative("../db/sql_runner")

class Mealtime

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO mealtimes
            (name)
            VALUES
            ($1)
            RETURNING id"
    values = [@name]
    mealtime = SqlRunner.run(sql, values).first
    @id = mealtime['id'].to_i
  end

  def update()
    sql = "UPDATE mealtimes SET name = $1 WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM mealtimes;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM mealtimes
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT * FROM mealtimes"
    mealtimes = SqlRunner.run( sql )
    result = mealtimes.map { |mealtime| Mealtime.new( mealtime ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM mealtimes WHERE id = $1"
    values = [id]
    mealtime = SqlRunner.run( sql, values )
    result = Mealtime.new( mealtime.first )
    return result
  end
end
