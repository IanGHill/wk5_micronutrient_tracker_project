require_relative("../db/sql_runner")

class Nutrient

  attr_reader :id, :name, :rda, :uom, :type

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @rda = options['rda'].to_i
    @uom = options['uom']
    @type = options['type']
  end

  def save()
    sql = "INSERT INTO nutrients
            (name,
            rda,
            uom,
            type)
            VALUES
            ($1, $2, $3, $4)
            RETURNING id"
    values = [@name, @rda, @uom, @type]
    nutrient = SqlRunner.run(sql, values).first
    @id = nutrient['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM nutrients;"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM nutrients
            ORDER BY type, id"
    nutrients = SqlRunner.run( sql )
    result = nutrients.map { |nutrient| Nutrient.new( nutrient ) }
    return result
  end

end
