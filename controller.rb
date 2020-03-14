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
  # Render some kind of view called index
  @all_foods = Food.all
  @all_mealtimes = Mealtime.all
  @all_meals = ConsumedFood.all_meal_details
  @total_minerals = ConsumedFood.nutrients_total_minerals
  @total_vitamins = ConsumedFood.nutrients_total_vitamins
  erb(:index)
end


post '/food-diary' do
  @consumed_food = ConsumedFood.new(params)
  @consumed_food.save
  redirect to "/food-diary"
end

post '/food-diary/:id/delete' do
  # binding.pry
  consumed_food = ConsumedFood.find(params[:id])
  consumed_food.delete()
  redirect to "/food-diary"
end
