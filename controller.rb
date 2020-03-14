require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('models/consumed_food')
require_relative('models/food')
require_relative('models/mealtime')
require_relative('models/nutrient_level')
require_relative('models/nutrient')
also_reload('./models/*')

get '/food-diary' do
  # Should be the PizzaOrder.all method
  # Remnder some kind of view called index
  @total_minerals = ConsumedFood.nutrients_total_minerals
  @total_vitamins = ConsumedFood.nutrients_total_vitamins
  erb(:index)
end
