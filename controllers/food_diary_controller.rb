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


get '/food-diary' do
# get variables to populate dropdown selections
  @all_foods = Food.all
  @all_mealtimes = Mealtime.all
  @all_food_types = FoodType.all
# get variables to populate food diary
  @all_meals = ConsumedFood.all_meal_details
# get variables to populate nutrition tables
  @total_minerals = ConsumedFood.nutrients_total_minerals
  @total_vitamins = ConsumedFood.nutrients_total_vitamins
  erb( :"food-diary/index" )
end


post '/food-diary' do
  @consumed_food = ConsumedFood.new(params)
  @consumed_food.save
  redirect to ("/food-diary")
end


post '/food-diary/delete' do

  params.each do |food, id|
    consumed_food = ConsumedFood.find(id)
    consumed_food.delete()
  end
  redirect to "/food-diary"
end
