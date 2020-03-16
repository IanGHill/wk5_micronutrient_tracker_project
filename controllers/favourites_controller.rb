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

# This section handles grouping foods together into a favourite 'meal'
post '/favourite/new' do

  params.each do |food, id|

    consumed_food = ConsumedFood.find(id)
    consumed_food.group_as_favourite = TRUE
    consumed_food.update
  end


  redirect to "/food-diary"
end
