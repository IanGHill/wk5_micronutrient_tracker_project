require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('models/consumed_food')
require_relative('models/food')
require_relative('models/mealtime')
require_relative('models/nutrient_level')
require_relative('models/nutrient')
also_reload('./models/*')

get '/pizza-orders' do
  # Should be the PizzaOrder.all method
  # Remnder some kind of view called index
  @orders = PizzaOrder.all()
  erb(:index)
end
