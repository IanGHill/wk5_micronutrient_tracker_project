require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )

require_relative('../models/consumed_food.rb')
require_relative('../models/food')
require_relative('../models/mealtime')
require_relative('../models/nutrient_level')
require_relative('../models/nutrient')
require_relative('../models/food_type')
also_reload('../models/*')

get '/favourite' do
  @all_fav_foods = Food.find_favourites

# check if we are landing on this page for the first time and if so populate the nutritional data with the first item from the dropdown, otherwise populate using the selected item
  if params[:foods_id]
    @selected_fav = Food.find(params[:foods_id].to_i)
  else
    @selected_fav = @all_fav_foods.first
  end

  @mineral_data = @selected_fav.minerals()
  @vitamin_data = @selected_fav.vitamins()

  erb( :"favourite/index" )
end

post '/favourite' do
  @all_fav_foods = Food.find_favourites
  @selected_fav = Food.find(params[:foods_id].to_i)
  @mineral_data = @selected_fav.minerals()
  @vitamin_data = @selected_fav.vitamins()
  erb( :"favourite/index" )
end

# This section handles grouping foods together into a favourite 'meal' (e.g. oats plus blueberries can be grouped as blueberry porridge)
# Set group_as_favourite to TRUE for each applicable row on the consumed foods table so we know which consumed items to group together and calculate total nutrients for. Also calculate the total quantity for the consumed items. (E.g. 100g of oats plus 60g of blueberries is 160g of Blueberry porridge. We'll need this to work out total nutrients per 100g of the new 'meal' as nutrient levels are stored on nutrient_levels table per 100g)
# Insert a new food on the Food table for the new favourite meal
# Calculate the total nutrients for the favourite meal
# Insert rows onto the nutrient_levels table for the favourite meal after adjusting the level so that it is per 100g - one row for each nutrient
# Reset group_as_favourite to FALSE as last step in grouping foods into a favourite meal
post '/favourite/new' do

  @favourite_name = params['favourite_name']
  @total_quantity = 0
  params.each do |key, value|
    if key != 'favourite_name'
      consumed_food = ConsumedFood.find(value)
      consumed_food.group_as_favourite = TRUE
      @total_quantity += consumed_food.quantity
      consumed_food.update
    end
  end

  all_food_types = FoodType.all
  all_food_types.each do |food_type|

    if food_type.name == "Favourites"
      @food_type_id = food_type.id
    end
  end

  @new_favourite = Food.new({'name' => @favourite_name, 'food_types_id' => @food_type_id})
  @new_favourite.save

  new_fav_total_nutrients = ConsumedFood.fav_nutrients_total()

  new_fav_total_nutrients.each do |nutrient|
    total_nutrient_level = nutrient["total_nutrient_level"].to_f
    nutrient_level_per_100g = (100 * total_nutrient_level / @total_quantity)

    fav_nutrient_level = NutrientLevel.new({'foods_id' => @new_favourite.id, 'nutrients_id' => nutrient["id"].to_i, 'nutrient_level' => nutrient_level_per_100g})
    fav_nutrient_level.save
  end

  ConsumedFood.reset_group_as_favourite

  erb( :"favourite/create" )
end
