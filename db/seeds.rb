require_relative('../models/mealtime')
require_relative('../models/nutrient')
require_relative('../models/food')
require_relative('../models/nutrient_level')
require_relative('../models/consumed_food')
require 'date'
# Mealtime.delete_all
# Nutrient.delete_all
# Food.delete_all
# NutrientLevel.delete_all
ConsumedFood.delete_all

# mealtime1 = Mealtime.new({ 'name' => 'Breakfast'})
# mealtime2 = Mealtime.new({ 'name' => 'Mid-morning snack'})
# mealtime3 = Mealtime.new({ 'name' => 'Lunch'})
# mealtime4 = Mealtime.new({ 'name' => 'Afternoon snack'})
# mealtime5 = Mealtime.new({ 'name' => 'Dinner'})
# mealtime6 = Mealtime.new({ 'name' => 'Evening snack'})
# mealtime1.save
# mealtime2.save
# mealtime3.save
# mealtime4.save
# mealtime5.save
# mealtime6.save
#
# nutrient1 = Nutrient.new({ 'name' => 'Calcium (Ca)', 'rda' => '700', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient2 = Nutrient.new({ 'name' => 'Copper (Cu)', 'rda' => '1.2', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient3 = Nutrient.new({ 'name' => 'Iron (total)', 'rda' => '8.7', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient4 = Nutrient.new({ 'name' => 'Magnesium (Mg)', 'rda' => '300', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient5 = Nutrient.new({ 'name' => 'Phosphorus (P)', 'rda' => '550', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient6 = Nutrient.new({ 'name' => 'Potassium (K)', 'rda' => '3500', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient7 = Nutrient.new({ 'name' => 'Selenium (total)', 'rda' => '75', 'uom' => 'µg', 'type' => 'mineral'})
# nutrient8 = Nutrient.new({ 'name' => 'Zinc (Zn)', 'rda' => '9.5', 'uom' => 'mg', 'type' => 'mineral'})
# nutrient9 = Nutrient.new({ 'name' => 'B1 (Thiamin)', 'rda' => '1', 'uom' => 'mg', 'type' => 'vitamin'})
# nutrient10 = Nutrient.new({ 'name' => 'B12 (Cobalamin)', 'rda' => '1.5', 'uom' => 'µg', 'type' => 'vitamin'})
# nutrient11 = Nutrient.new({ 'name' => 'B2 (Riboflavin)', 'rda' => '1.3', 'uom' => 'mg', 'type' => 'vitamin'})
# nutrient12 = Nutrient.new({ 'name' => 'B3 (Niacin)', 'rda' => '17', 'uom' => 'mg', 'type' => 'vitamin'})
# nutrient13 = Nutrient.new({ 'name' => 'B6 (Pyridoxine)', 'rda' => '1.4', 'uom' => 'mg', 'type' => 'vitamin'})
# nutrient14 = Nutrient.new({ 'name' => 'E', 'rda' => '4', 'uom' => 'mg', 'type' => 'vitamin'})
# nutrient15 = Nutrient.new({ 'name' => 'K', 'rda' => '70', 'uom' => 'µg', 'type' => 'vitamin'})
# nutrient1.save
# nutrient2.save
# nutrient3.save
# nutrient4.save
# nutrient5.save
# nutrient6.save
# nutrient7.save
# nutrient8.save
# nutrient9.save
# nutrient10.save
# nutrient11.save
# nutrient12.save
# nutrient13.save
# nutrient14.save
# nutrient15.save
# food1 = Food.new({'name' => 'Blueberries', 'type' => 'Fruit'})
# food2 = Food.new({'name' => 'Raspberries', 'type' => 'Fruit'})
# food3 = Food.new({'name' => 'Apples', 'type' => 'Fruit'})
# food4 = Food.new({'name' => 'Bananas', 'type' => 'Fruit'})
# food5 = Food.new({'name' => 'Brown Rice', 'type' => 'Grains'})
# food6 = Food.new({'name' => 'Rolled Oats', 'type' => 'Grains'})
# food7 = Food.new({'name' => 'Wholemeal Bread', 'type' => 'Grains'})
# food8 = Food.new({'name' => 'Butterbeans', 'type' => 'Legumes'})
# food9 = Food.new({'name' => 'Broad beans', 'type' => 'Legumes'})
# food10 = Food.new({'name' => 'Linseeds', 'type' => 'Nuts & Seeds'})
# food11 = Food.new({'name' => 'Walnuts', 'type' => 'Nuts & Seeds'})
# food12 = Food.new({'name' => 'Pumpkin Seeds', 'type' => 'Nuts & Seeds'})
# food13 = Food.new({'name' => 'Coconut Milk', 'type' => 'Nuts & Seeds'})
# food14 = Food.new({'name' => 'Cinnamon', 'type' => 'Nuts & Seeds'})
# food15 = Food.new({'name' => 'Ginger', 'type' => 'Nuts & Seeds'})
# food16 = Food.new({'name' => 'Cumin Seeds', 'type' => 'Nuts & Seeds'})
# food17 = Food.new({'name' => 'Pepper', 'type' => 'Nuts & Seeds'})
# food18 = Food.new({'name' => 'Curry Powder', 'type' => 'Nuts & Seeds'})
# food19 = Food.new({'name' => 'Broccoli', 'type' => 'Vegetables'})
# food20 = Food.new({'name' => 'Parsnip', 'type' => 'Vegetables'})
# food21 = Food.new({'name' => 'Celeriac', 'type' => 'Vegetables'})
# food22 = Food.new({'name' => 'Spring Onions', 'type' => 'Vegetables'})
# food23 = Food.new({'name' => 'Carrots', 'type' => 'Vegetables'})
# food24 = Food.new({'name' => 'Spinach', 'type' => 'Vegetables'})
# food25 = Food.new({'name' => 'Mushrooms', 'type' => 'Vegetables'})
# food26 = Food.new({'name' => 'Tomatoes', 'type' => 'Vegetables'})
# food27 = Food.new({'name' => 'Sweet Potatoes', 'type' => 'Vegetables'})
# food28 = Food.new({'name' => 'Sweet Peppers', 'type' => 'Vegetables'})
# food1.save
# food2.save
# food3.save
# food4.save
# food5.save
# food6.save
# food7.save
# food8.save
# food9.save
# food10.save
# food11.save
# food12.save
# food13.save
# food14.save
# food15.save
# food16.save
# food17.save
# food18.save
# food19.save
# food20.save
# food21.save
# food22.save
# food23.save
# food24.save
# food25.save
# food26.save
# food27.save
# food28.save

# nutrientlevel1 = NutrientLevel.new({'foods_id' => 8, 'nutrients_id' => 2, 'nutrient_level' => 1.333})

consumedfood1 = ConsumedFood.new({'foods_id' => 9, 'mealtimes_id'=> 1, 'quantity' => 100})
consumedfood1.save

consumedfood2 = ConsumedFood.new({'foods_id' => 9, 'mealtimes_id'=> 1, 'quantity' => 100})
consumedfood2.save

consumedfood3 = ConsumedFood.new({'foods_id' => 9, 'mealtimes_id'=> 1, 'quantity' => 100})
consumedfood3.save


# consumedfood3 = ConsumedFood.new({'foods_id' => 9, 'mealtimes_id'=> 1, 'quantity' => 50})
# consumedfood3.save

# consumedfood1.quantity = 80
# consumedfood1.update
# puts ConsumedFood.find(consumedfood1.id)
#
# puts "all all all all all all all all"
# puts ConsumedFood.all

# puts ConsumedFood.nutrients(consumedfood1.foods_id)[0].name

# consumedfood1.nutrients_by_qty.each do |nutrient|
#   puts "Contains #{nutrient.name}: #{nutrient.nutrient_level.round(3)}"
# end
#
# consumedfood2.nutrients_by_qty.each do |nutrient|
#   puts "Contains #{nutrient.name}: #{nutrient.nutrient_level.round(3)}"
# end
#
# consumedfood3.nutrients_by_qty.each do |nutrient|
#   puts "Contains #{nutrient.name}: #{nutrient.nutrient_level.round(3)}"
# end

# consumedfood3.nutrients.each do |nutrient|
#   puts "Contains #{nutrient.name}: #{nutrient.nutrient_level}"
# end

# puts ConsumedFood.nutrients_total[0]
#
# puts Food.types[0]

# puts Food.find_by_type('Fruit')[0].name

puts ConsumedFood.nutrients_total_minerals[0]
