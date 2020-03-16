require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('../models/consumed_food')
require_relative('../models/food')
require_relative('../models/mealtime')
require_relative('../models/nutrient_level')
require_relative('../models/nutrient')
require_relative('../models/food_type')
also_reload('../models/*')


get '/favourite' do
  # binding.pry
  @all_foods = Food.all
  erb( :"favourite/index" )
end

post '/favourite/new' do
  # binding.pry
  params.each do |food, id|
    binding.pry
    consumed_food = ConsumedFood.find(id)
    consumed_food.group_as_favourite = true
    binding.pry
  end
  redirect to "/food-diary"
end
