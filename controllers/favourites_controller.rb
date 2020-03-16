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

  @favourite_name = params['favourite_name']

  params.each do |key, value|
    if key != 'favourite_name'
      consumed_food = ConsumedFood.find(value)
      consumed_food.group_as_favourite = TRUE
      consumed_food.update
    end
  end

  favourite_id = FoodType.find_by_name("Favourites")
  binding.pry
  new_favourite = Food.new({'name' => @favourite_name, 'food_types_id' => favourite_id})
  new_favourite.save

  new_fav_total_nutrients = ConsumedFood.fav_nutrients_total
  binding.pry

  ConsumedFood.reset_group_as_favourite

  redirect to "/favourite"
end
