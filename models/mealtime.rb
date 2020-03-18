require_relative("../db/sql_runner")

class Mealtime

  attr_reader :id, :name

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

  def self.delete_all()
    sql = "DELETE FROM mealtimes;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM mealtimes"
    mealtimes = SqlRunner.run( sql )
    result = mealtimes.map { |mealtime| Mealtime.new( mealtime ) }
    return result
  end

end
