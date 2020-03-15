require_relative("../db/sql_runner")
require_relative("nutrient")

class Nutrient

  attr_reader :id
  attr_accessor :name, :rda, :uom, :type

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

  def update()
    sql = "UPDATE nutrients SET
          (name,
          rda,
          uom,
          type)
           =
           ($1, $2, $3, $4)
           WHERE id = $5"
    values = [@name, @rda, @uom, @type, @id]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM nutrients;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM nutrients
    WHERE id = $1"
    values = [@id]
    SqlRunner.run( sql, values )
  end

  def self.all()
    sql = "SELECT * FROM nutrients
            ORDER BY type, id"
    nutrients = SqlRunner.run( sql )
    result = nutrients.map { |nutrient| Nutrient.new( nutrient ) }
    return result
  end

  def self.find( id )
    sql = "SELECT * FROM nutrients WHERE id = $1"
    values = [id]
    nutrient = SqlRunner.run( sql, values )
    result = Nutrient.new( nutrient.first )
    return result
  end
end
