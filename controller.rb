require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('models/consumed_food')
require_relative('models/food')
require_relative('models/mealtime')
require_relative('models/nutrient_level')
require_relative('models/nutrient')
require_relative('models/food_type')
also_reload('./models/*')


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
  erb(:index)
end


post '/food-diary' do
  @consumed_food = ConsumedFood.new(params)
  @consumed_food.save
  redirect to "/food-diary"
end


post '/food-diary/:id/delete' do
  consumed_food = ConsumedFood.find(params[:id])
  consumed_food.delete()
  redirect to "/food-diary"
end

# sets up the form for creating a new food
get '/food-diary/new' do
  @all_food_types = FoodType.all
  @all_nutrients = Nutrient.all
  erb(:new)
end

# This section deals with creating a new food. It inserts one row on the Foods table and multiple rows on the NutrientLevels table (one row for each nutrient)
post '/food-diary/new' do
  new_food = Food.new(params)
  new_food.save

  @all_nutrients = Nutrient.all
  @all_nutrients.each do |nutrient|
    nutrient_level = NutrientLevel.new({'foods_id' => new_food.id, 'nutrients_id' => nutrient.id,  'nutrient_level' => params[nutrient.name].to_f})
    nutrient_level.save
  end
  erb(:create)
end
