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

# sets up the form for creating a new food
get '/food/new' do
  @all_food_types = FoodType.all
  @all_nutrients = Nutrient.all
  erb( :"food/new" )
end

# This section deals with creating a new food. It inserts one row on the Foods table and multiple rows on the NutrientLevels table (one row for each nutrient)
post '/food/create' do
  new_food = Food.new(params)
  new_food.save

  @all_nutrients = Nutrient.all
  @all_nutrients.each do |nutrient|
    nutrient_level = NutrientLevel.new({'foods_id' => new_food.id, 'nutrients_id' => nutrient.id,  'nutrient_level' => params[nutrient.name].to_f})
    nutrient_level.save
  end
  erb(:"food/create")
end
