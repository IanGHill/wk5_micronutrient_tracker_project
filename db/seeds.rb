require_relative('../models/mealtime')
require_relative('../models/nutrient')
require_relative('../models/food')
require_relative('../models/nutrient_level')
require_relative('../models/consumed_food')
require_relative('../models/food_type')

FoodType.delete_all
Mealtime.delete_all
Nutrient.delete_all
Food.delete_all
NutrientLevel.delete_all
ConsumedFood.delete_all

mealtime1 = Mealtime.new({ 'name' => 'Breakfast'})
mealtime2 = Mealtime.new({ 'name' => 'Mid-morning snack'})
mealtime3 = Mealtime.new({ 'name' => 'Lunch'})
mealtime4 = Mealtime.new({ 'name' => 'Afternoon snack'})
mealtime5 = Mealtime.new({ 'name' => 'Dinner'})
mealtime6 = Mealtime.new({ 'name' => 'Evening snack'})
mealtime1.save
mealtime2.save
mealtime3.save
mealtime4.save
mealtime5.save
mealtime6.save

foodtype1 = FoodType.new({ 'name' => 'Fruit'})
foodtype2 = FoodType.new({ 'name' => 'Grains'})
foodtype3 = FoodType.new({ 'name' => 'Nuts & Seeds'})
foodtype4 = FoodType.new({ 'name' => 'Legumes'})
foodtype5 = FoodType.new({ 'name' => 'Vegetables'})
foodtype6 = FoodType.new({ 'name' => 'Beverages'})
foodtype7 = FoodType.new({ 'name' => 'Favourites'})
foodtype8 = FoodType.new({ 'name' => 'Herbs & Spices'})
foodtype1.save
foodtype2.save
foodtype3.save
foodtype4.save
foodtype5.save
foodtype6.save
foodtype7.save
foodtype8.save

nutrient1 = Nutrient.new({ 'name' => 'Calcium (Ca)', 'rda' => '700', 'uom' => 'mg', 'type' => 'mineral'})
nutrient2 = Nutrient.new({ 'name' => 'Copper (Cu)', 'rda' => '1.2', 'uom' => 'mg', 'type' => 'mineral'})
nutrient3 = Nutrient.new({ 'name' => 'Iron (total)', 'rda' => '8.7', 'uom' => 'mg', 'type' => 'mineral'})
nutrient4 = Nutrient.new({ 'name' => 'Magnesium (Mg)', 'rda' => '300', 'uom' => 'mg', 'type' => 'mineral'})
nutrient5 = Nutrient.new({ 'name' => 'Phosphorus (P)', 'rda' => '550', 'uom' => 'mg', 'type' => 'mineral'})
nutrient6 = Nutrient.new({ 'name' => 'Potassium (K)', 'rda' => '3500', 'uom' => 'mg', 'type' => 'mineral'})
nutrient7 = Nutrient.new({ 'name' => 'Selenium (total)', 'rda' => '75', 'uom' => 'µg', 'type' => 'mineral'})
nutrient8 = Nutrient.new({ 'name' => 'Zinc (Zn)', 'rda' => '9.5', 'uom' => 'mg', 'type' => 'mineral'})
nutrient9 = Nutrient.new({ 'name' => 'B1 (Thiamin)', 'rda' => '1', 'uom' => 'mg', 'type' => 'vitamin'})
nutrient10 = Nutrient.new({ 'name' => 'B12 (Cobalamin)', 'rda' => '1.5', 'uom' => 'µg', 'type' => 'vitamin'})
nutrient11 = Nutrient.new({ 'name' => 'B2 (Riboflavin)', 'rda' => '1.3', 'uom' => 'mg', 'type' => 'vitamin'})
nutrient12 = Nutrient.new({ 'name' => 'B3 (Niacin)', 'rda' => '17', 'uom' => 'mg', 'type' => 'vitamin'})
nutrient13 = Nutrient.new({ 'name' => 'B6 (Pyridoxine)', 'rda' => '1.4', 'uom' => 'mg', 'type' => 'vitamin'})
nutrient14 = Nutrient.new({ 'name' => 'Vitamin E', 'rda' => '4', 'uom' => 'mg', 'type' => 'vitamin'})
nutrient15 = Nutrient.new({ 'name' => 'Vitamin K', 'rda' => '70', 'uom' => 'µg', 'type' => 'vitamin'})
nutrient1.save
nutrient2.save
nutrient3.save
nutrient4.save
nutrient5.save
nutrient6.save
nutrient7.save
nutrient8.save
nutrient9.save
nutrient11.save
nutrient12.save
nutrient13.save
nutrient10.save
nutrient14.save
nutrient15.save
food1 = Food.new({'name' => 'Blueberries', 'food_types_id' => foodtype1.id})
food2 = Food.new({'name' => 'Raspberries', 'food_types_id' => foodtype1.id})
food3 = Food.new({'name' => 'Apples', 'food_types_id' => foodtype1.id})
food4 = Food.new({'name' => 'Bananas', 'food_types_id' => foodtype1.id})
food5 = Food.new({'name' => 'Brown Rice', 'food_types_id' => foodtype2.id})
food6 = Food.new({'name' => 'Rolled Oats', 'food_types_id' => foodtype2.id})
food7 = Food.new({'name' => 'Wholemeal Bread', 'food_types_id' => foodtype2.id})
food8 = Food.new({'name' => 'Butterbeans', 'food_types_id' => foodtype4.id})
food9 = Food.new({'name' => 'Broad beans', 'food_types_id' => foodtype4.id})
food10 = Food.new({'name' => 'Linseeds', 'food_types_id' => foodtype3.id})
food11 = Food.new({'name' => 'Walnuts', 'food_types_id' => foodtype3.id})
food12 = Food.new({'name' => 'Pumpkin Seeds', 'food_types_id' => foodtype3.id})
food13 = Food.new({'name' => 'Coconut Milk', 'food_types_id' => foodtype6.id})
food14 = Food.new({'name' => 'Cinnamon', 'food_types_id' => foodtype8.id})
food15 = Food.new({'name' => 'Ginger', 'food_types_id' => foodtype8.id})
food16 = Food.new({'name' => 'Cumin', 'food_types_id' => foodtype8.id})
food17 = Food.new({'name' => 'Pepper', 'food_types_id' => foodtype8.id})
food18 = Food.new({'name' => 'Curry Powder', 'food_types_id' => foodtype8.id})
food19 = Food.new({'name' => 'Broccoli', 'food_types_id' => foodtype5.id})
food20 = Food.new({'name' => 'Parsnip', 'food_types_id' => foodtype5.id})
food21 = Food.new({'name' => 'Celeriac', 'food_types_id' => foodtype5.id})
food22 = Food.new({'name' => 'Spring Onions', 'food_types_id' => foodtype5.id})
food23 = Food.new({'name' => 'Carrots', 'food_types_id' => foodtype5.id})
food24 = Food.new({'name' => 'Spinach', 'food_types_id' => foodtype5.id})
food25 = Food.new({'name' => 'Mushrooms', 'food_types_id' => foodtype5.id})
food26 = Food.new({'name' => 'Tomatoes', 'food_types_id' => foodtype5.id})
food27 = Food.new({'name' => 'Sweet Potatoes', 'food_types_id' => foodtype5.id})
food28 = Food.new({'name' => 'Sweet Peppers', 'food_types_id' => foodtype5.id})
food1.save
food2.save
food3.save
food4.save
food5.save
food6.save
food7.save
food8.save
food9.save
food10.save
food11.save
food12.save
food13.save
food14.save
food15.save
food16.save
food17.save
food18.save
food19.save
food20.save
food21.save
food22.save
food23.save
food24.save
food25.save
food26.save
food27.save
food28.save

nutrientlevel1 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 5})
nutrientlevel2 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.3})
nutrientlevel3 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 5})
nutrientlevel4 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.583})
nutrientlevel5 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 12})
nutrientlevel6 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 85})
nutrientlevel7 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.03})
nutrientlevel8 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.02})
nutrientlevel9 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.05})
nutrientlevel10 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel11 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 1.9})
nutrientlevel12 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 12})
nutrientlevel13 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.2})
nutrientlevel14 = NutrientLevel.new({'foods_id' => food1.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.08})
nutrientlevel15 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 25})
nutrientlevel16 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.7})
nutrientlevel17 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 19})
nutrientlevel18 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.8})
nutrientlevel19 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 31})
nutrientlevel20 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 170})
nutrientlevel21 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.05})
nutrientlevel22 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.03})
nutrientlevel23 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.06})
nutrientlevel24 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel25 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.48})
nutrientlevel26 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 10})
nutrientlevel27 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.3})
nutrientlevel28 = NutrientLevel.new({'foods_id' => food2.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.1})
nutrientlevel29 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 4})
nutrientlevel30 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.1})
nutrientlevel31 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 5})
nutrientlevel32 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.333})
nutrientlevel33 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 11})
nutrientlevel34 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 120})
nutrientlevel35 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.02})
nutrientlevel36 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.03})
nutrientlevel37 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.06})
nutrientlevel38 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel39 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.59})
nutrientlevel40 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 6})
nutrientlevel41 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.1})
nutrientlevel42 = NutrientLevel.new({'foods_id' => food3.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.02})
nutrientlevel43 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 6})
nutrientlevel44 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.3})
nutrientlevel45 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 34})
nutrientlevel46 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.95})
nutrientlevel47 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 28})
nutrientlevel48 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 400})
nutrientlevel49 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.06})
nutrientlevel50 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel51 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.04})
nutrientlevel52 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.29})
nutrientlevel53 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel54 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.27})
nutrientlevel55 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel56 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.2})
nutrientlevel57 = NutrientLevel.new({'foods_id' => food4.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.1})
nutrientlevel58 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 10})
nutrientlevel59 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 1.4})
nutrientlevel60 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 110})
nutrientlevel61 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 6.8})
nutrientlevel62 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 310})
nutrientlevel63 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 250})
nutrientlevel64 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.07})
nutrientlevel65 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 10})
nutrientlevel66 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.59})
nutrientlevel67 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.25})
nutrientlevel68 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel69 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.8})
nutrientlevel70 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel71 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 1.8})
nutrientlevel72 = NutrientLevel.new({'foods_id' => food5.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.85})
nutrientlevel73 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 55})
nutrientlevel74 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 4.1})
nutrientlevel75 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 110})
nutrientlevel76 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 4.167})
nutrientlevel77 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 380})
nutrientlevel78 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 370})
nutrientlevel79 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.1})
nutrientlevel80 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 3})
nutrientlevel81 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.5})
nutrientlevel82 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.12})
nutrientlevel83 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel84 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 1.7})
nutrientlevel85 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 3.3})
nutrientlevel86 = NutrientLevel.new({'foods_id' => food6.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.23})
nutrientlevel87 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 34})
nutrientlevel88 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 2})
nutrientlevel89 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 61})
nutrientlevel90 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 3.898})
nutrientlevel91 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 189})
nutrientlevel92 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 241})
nutrientlevel93 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.07})
nutrientlevel94 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 4})
nutrientlevel95 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.12})
nutrientlevel96 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.092})
nutrientlevel97 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel98 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.5})
nutrientlevel99 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 2})
nutrientlevel100 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 1.42})
nutrientlevel101 = NutrientLevel.new({'foods_id' => food7.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.21})
nutrientlevel102 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 100})
nutrientlevel103 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 6.4})
nutrientlevel104 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 150})
nutrientlevel105 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 6.517})
nutrientlevel106 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 410})
nutrientlevel107 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 1370})
nutrientlevel108 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.19})
nutrientlevel109 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 16})
nutrientlevel110 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.65})
nutrientlevel111 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.4})
nutrientlevel112 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel113 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.52})
nutrientlevel114 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 3})
nutrientlevel115 = NutrientLevel.new({'foods_id' => food8.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.68})
nutrientlevel116 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 23})
nutrientlevel117 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.9})
nutrientlevel118 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 24})
nutrientlevel119 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 4.1})
nutrientlevel120 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 130})
nutrientlevel121 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 310})
nutrientlevel122 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.04})
nutrientlevel123 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel124 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.04})
nutrientlevel125 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.06})
nutrientlevel126 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel127 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.46})
nutrientlevel128 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel129 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.9})
nutrientlevel130 = NutrientLevel.new({'foods_id' => food9.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.11})
nutrientlevel131 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 260})
nutrientlevel132 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 181})
nutrientlevel133 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 7.57})
nutrientlevel134 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 660})
nutrientlevel135 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 725})
nutrientlevel136 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.96})
nutrientlevel137 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.41})
nutrientlevel138 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel139 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.7})
nutrientlevel140 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 4})
nutrientlevel141 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 7.8})
nutrientlevel142 = NutrientLevel.new({'foods_id' => food10.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 1.2})
nutrientlevel143 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 94})
nutrientlevel144 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 2.9})
nutrientlevel145 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 160})
nutrientlevel146 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 4})
nutrientlevel147 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 380})
nutrientlevel148 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 450})
nutrientlevel149 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.14})
nutrientlevel150 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 3})
nutrientlevel151 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.4})
nutrientlevel152 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.67})
nutrientlevel153 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 3.83})
nutrientlevel154 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 3})
nutrientlevel155 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 2.7})
nutrientlevel156 = NutrientLevel.new({'foods_id' => food11.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 1.34})
nutrientlevel157 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 39})
nutrientlevel158 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 10})
nutrientlevel159 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 270})
nutrientlevel160 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 10.637})
nutrientlevel161 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 850})
nutrientlevel162 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 820})
nutrientlevel163 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.32})
nutrientlevel164 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 6})
nutrientlevel165 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.23})
nutrientlevel166 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.092})
nutrientlevel167 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel168 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 4})
nutrientlevel169 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel170 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 6.6})
nutrientlevel171 = NutrientLevel.new({'foods_id' => food12.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 1.57})
nutrientlevel172 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 29})
nutrientlevel173 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.1})
nutrientlevel174 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 30})
nutrientlevel175 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.2})
nutrientlevel176 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 30})
nutrientlevel177 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 280})
nutrientlevel178 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.06})
nutrientlevel179 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 3})
nutrientlevel180 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.03})
nutrientlevel181 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.03})
nutrientlevel182 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel183 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel184 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.1})
nutrientlevel185 = NutrientLevel.new({'foods_id' => food13.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.04})
nutrientlevel186 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 1230})
nutrientlevel187 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 38.1})
nutrientlevel188 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 56})
nutrientlevel189 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.983})
nutrientlevel190 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 61})
nutrientlevel191 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 500})
nutrientlevel192 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.14})
nutrientlevel193 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 15})
nutrientlevel194 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.08})
nutrientlevel195 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel196 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel197 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 2})
nutrientlevel198 = NutrientLevel.new({'foods_id' => food14.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.46})
nutrientlevel199 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 17})
nutrientlevel200 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.6})
nutrientlevel201 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 35})
nutrientlevel202 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1})
nutrientlevel203 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 27})
nutrientlevel204 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 330})
nutrientlevel205 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.03})
nutrientlevel206 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 38.5})
nutrientlevel207 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.02})
nutrientlevel208 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.16})
nutrientlevel209 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel210 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel211 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.4})
nutrientlevel212 = NutrientLevel.new({'foods_id' => food15.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.07})
nutrientlevel213 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 970})
nutrientlevel214 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 69})
nutrientlevel215 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 370})
nutrientlevel216 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 8.067})
nutrientlevel217 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 510})
nutrientlevel218 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 1380})
nutrientlevel219 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.35})
nutrientlevel220 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 5.2})
nutrientlevel221 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.59})
nutrientlevel222 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.2})
nutrientlevel223 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel224 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel225 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 4.2})
nutrientlevel226 = NutrientLevel.new({'foods_id' => food16.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 1.29})
nutrientlevel227 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 430})
nutrientlevel228 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 11.2})
nutrientlevel229 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 190})
nutrientlevel230 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 3.117})
nutrientlevel231 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 170})
nutrientlevel232 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 1260})
nutrientlevel233 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.24})
nutrientlevel234 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 3})
nutrientlevel235 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.11})
nutrientlevel236 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.2})
nutrientlevel237 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel238 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel239 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 1.4})
nutrientlevel240 = NutrientLevel.new({'foods_id' => food17.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 1.13})
nutrientlevel241 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 640})
nutrientlevel242 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 58.3})
nutrientlevel243 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 280})
nutrientlevel244 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 6.245})
nutrientlevel245 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 270})
nutrientlevel246 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 1830})
nutrientlevel247 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.28})
nutrientlevel248 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 17.1})
nutrientlevel249 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.25})
nutrientlevel250 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.119})
nutrientlevel251 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel252 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel253 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 4.1})
nutrientlevel254 = NutrientLevel.new({'foods_id' => food18.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 1.04})
nutrientlevel255 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 56})
nutrientlevel256 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 1.7})
nutrientlevel257 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 22})
nutrientlevel258 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.7})
nutrientlevel259 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 87})
nutrientlevel260 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 370})
nutrientlevel261 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.06})
nutrientlevel262 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.1})
nutrientlevel263 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.14})
nutrientlevel264 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel265 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 1.3})
nutrientlevel266 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 185})
nutrientlevel267 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.6})
nutrientlevel268 = NutrientLevel.new({'foods_id' => food19.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.02})
nutrientlevel269 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 41})
nutrientlevel270 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.6})
nutrientlevel271 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 23})
nutrientlevel272 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.5})
nutrientlevel273 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 74})
nutrientlevel274 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 450})
nutrientlevel275 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.01})
nutrientlevel276 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 2})
nutrientlevel277 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.23})
nutrientlevel278 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.11})
nutrientlevel279 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel280 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 1})
nutrientlevel281 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 1})
nutrientlevel282 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.3})
nutrientlevel283 = NutrientLevel.new({'foods_id' => food20.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.05})
nutrientlevel284 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 40})
nutrientlevel285 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.8})
nutrientlevel286 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 21})
nutrientlevel287 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.1})
nutrientlevel288 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 63})
nutrientlevel289 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 460})
nutrientlevel290 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.02})
nutrientlevel291 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel292 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.18})
nutrientlevel293 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.08})
nutrientlevel294 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel295 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.5})
nutrientlevel296 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 41})
nutrientlevel297 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.3})
nutrientlevel298 = NutrientLevel.new({'foods_id' => food21.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.04})
nutrientlevel299 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 39})
nutrientlevel300 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 1.9})
nutrientlevel301 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 12})
nutrientlevel302 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.017})
nutrientlevel303 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 29})
nutrientlevel304 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 260})
nutrientlevel305 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.03})
nutrientlevel306 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel307 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.05})
nutrientlevel308 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.13})
nutrientlevel309 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel310 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.3})
nutrientlevel311 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel312 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.4})
nutrientlevel313 = NutrientLevel.new({'foods_id' => food22.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.06})
nutrientlevel314 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 25})
nutrientlevel315 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.3})
nutrientlevel316 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 3})
nutrientlevel317 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.3})
nutrientlevel318 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 15})
nutrientlevel319 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 170})
nutrientlevel320 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.02})
nutrientlevel321 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel322 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.1})
nutrientlevel323 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.14})
nutrientlevel324 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel325 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.56})
nutrientlevel326 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 15})
nutrientlevel327 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.1})
nutrientlevel328 = NutrientLevel.new({'foods_id' => food23.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.02})
nutrientlevel329 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 170})
nutrientlevel330 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 2.1})
nutrientlevel331 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 54})
nutrientlevel332 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.9})
nutrientlevel333 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 45})
nutrientlevel334 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 500})
nutrientlevel335 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.09})
nutrientlevel336 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel337 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.07})
nutrientlevel338 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.17})
nutrientlevel339 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel340 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 1.71})
nutrientlevel341 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 381})
nutrientlevel342 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.7})
nutrientlevel343 = NutrientLevel.new({'foods_id' => food24.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.04})
nutrientlevel344 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 29})
nutrientlevel345 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 1.9})
nutrientlevel346 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 29})
nutrientlevel347 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 10.5})
nutrientlevel348 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 120})
nutrientlevel349 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 230})
nutrientlevel350 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.43})
nutrientlevel351 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 3})
nutrientlevel352 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.191})
nutrientlevel353 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.088})
nutrientlevel354 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0})
nutrientlevel355 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel356 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.866})
nutrientlevel357 = NutrientLevel.new({'foods_id' => food25.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.118})
nutrientlevel358 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 7})
nutrientlevel359 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.5})
nutrientlevel360 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 7})
nutrientlevel361 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.1})
nutrientlevel362 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 24})
nutrientlevel363 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 250})
nutrientlevel364 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.01})
nutrientlevel365 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.09})
nutrientlevel366 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.14})
nutrientlevel367 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel368 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 1.22})
nutrientlevel369 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 6})
nutrientlevel370 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.1})
nutrientlevel371 = NutrientLevel.new({'foods_id' => food26.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.01})
nutrientlevel372 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 24})
nutrientlevel373 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.7})
nutrientlevel374 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 18})
nutrientlevel375 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 0.8})
nutrientlevel376 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 50})
nutrientlevel377 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 370})
nutrientlevel378 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient7.id, 'nutrient_level' => 1})
nutrientlevel379 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.17})
nutrientlevel380 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.09})
nutrientlevel381 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel382 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.28})
nutrientlevel383 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 0})
nutrientlevel384 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.3})
nutrientlevel385 = NutrientLevel.new({'foods_id' => food27.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.14})
nutrientlevel386 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient1.id, 'nutrient_level' => 8})
nutrientlevel387 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient3.id, 'nutrient_level' => 0.3})
nutrientlevel388 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient4.id, 'nutrient_level' => 14})
nutrientlevel389 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient12.id, 'nutrient_level' => 1.883})
nutrientlevel390 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient5.id, 'nutrient_level' => 22})
nutrientlevel391 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient6.id, 'nutrient_level' => 160})
nutrientlevel392 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient11.id, 'nutrient_level' => 0.03})
nutrientlevel393 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient9.id, 'nutrient_level' => 0.01})
nutrientlevel394 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient13.id, 'nutrient_level' => 0.36})
nutrientlevel395 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient10.id, 'nutrient_level' => 0})
nutrientlevel396 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient14.id, 'nutrient_level' => 0.8})
nutrientlevel397 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient15.id, 'nutrient_level' => 5})
nutrientlevel398 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient8.id, 'nutrient_level' => 0.1})
nutrientlevel399 = NutrientLevel.new({'foods_id' => food28.id, 'nutrients_id' => nutrient2.id, 'nutrient_level' => 0.01})
nutrientlevel1.save
nutrientlevel2.save
nutrientlevel3.save
nutrientlevel4.save
nutrientlevel5.save
nutrientlevel6.save
nutrientlevel7.save
nutrientlevel8.save
nutrientlevel9.save
nutrientlevel10.save
nutrientlevel11.save
nutrientlevel12.save
nutrientlevel13.save
nutrientlevel14.save
nutrientlevel15.save
nutrientlevel16.save
nutrientlevel17.save
nutrientlevel18.save
nutrientlevel19.save
nutrientlevel20.save
nutrientlevel21.save
nutrientlevel22.save
nutrientlevel23.save
nutrientlevel24.save
nutrientlevel25.save
nutrientlevel26.save
nutrientlevel27.save
nutrientlevel28.save
nutrientlevel29.save
nutrientlevel30.save
nutrientlevel31.save
nutrientlevel32.save
nutrientlevel33.save
nutrientlevel34.save
nutrientlevel35.save
nutrientlevel36.save
nutrientlevel37.save
nutrientlevel38.save
nutrientlevel39.save
nutrientlevel40.save
nutrientlevel41.save
nutrientlevel42.save
nutrientlevel43.save
nutrientlevel44.save
nutrientlevel45.save
nutrientlevel46.save
nutrientlevel47.save
nutrientlevel48.save
nutrientlevel49.save
nutrientlevel50.save
nutrientlevel51.save
nutrientlevel52.save
nutrientlevel53.save
nutrientlevel54.save
nutrientlevel55.save
nutrientlevel56.save
nutrientlevel57.save
nutrientlevel58.save
nutrientlevel59.save
nutrientlevel60.save
nutrientlevel61.save
nutrientlevel62.save
nutrientlevel63.save
nutrientlevel64.save
nutrientlevel65.save
nutrientlevel66.save
nutrientlevel67.save
nutrientlevel68.save
nutrientlevel69.save
nutrientlevel70.save
nutrientlevel71.save
nutrientlevel72.save
nutrientlevel73.save
nutrientlevel74.save
nutrientlevel75.save
nutrientlevel76.save
nutrientlevel77.save
nutrientlevel78.save
nutrientlevel79.save
nutrientlevel80.save
nutrientlevel81.save
nutrientlevel82.save
nutrientlevel83.save
nutrientlevel84.save
nutrientlevel85.save
nutrientlevel86.save
nutrientlevel87.save
nutrientlevel88.save
nutrientlevel89.save
nutrientlevel90.save
nutrientlevel91.save
nutrientlevel92.save
nutrientlevel93.save
nutrientlevel94.save
nutrientlevel95.save
nutrientlevel96.save
nutrientlevel97.save
nutrientlevel98.save
nutrientlevel99.save
nutrientlevel100.save
nutrientlevel101.save
nutrientlevel102.save
nutrientlevel103.save
nutrientlevel104.save
nutrientlevel105.save
nutrientlevel106.save
nutrientlevel107.save
nutrientlevel108.save
nutrientlevel109.save
nutrientlevel110.save
nutrientlevel111.save
nutrientlevel112.save
nutrientlevel113.save
nutrientlevel114.save
nutrientlevel115.save
nutrientlevel116.save
nutrientlevel117.save
nutrientlevel118.save
nutrientlevel119.save
nutrientlevel120.save
nutrientlevel121.save
nutrientlevel122.save
nutrientlevel123.save
nutrientlevel124.save
nutrientlevel125.save
nutrientlevel126.save
nutrientlevel127.save
nutrientlevel128.save
nutrientlevel129.save
nutrientlevel130.save
nutrientlevel131.save
nutrientlevel132.save
nutrientlevel133.save
nutrientlevel134.save
nutrientlevel135.save
nutrientlevel136.save
nutrientlevel137.save
nutrientlevel138.save
nutrientlevel139.save
nutrientlevel140.save
nutrientlevel141.save
nutrientlevel142.save
nutrientlevel143.save
nutrientlevel144.save
nutrientlevel145.save
nutrientlevel146.save
nutrientlevel147.save
nutrientlevel148.save
nutrientlevel149.save
nutrientlevel150.save
nutrientlevel151.save
nutrientlevel152.save
nutrientlevel153.save
nutrientlevel154.save
nutrientlevel155.save
nutrientlevel156.save
nutrientlevel157.save
nutrientlevel158.save
nutrientlevel159.save
nutrientlevel160.save
nutrientlevel161.save
nutrientlevel162.save
nutrientlevel163.save
nutrientlevel164.save
nutrientlevel165.save
nutrientlevel166.save
nutrientlevel167.save
nutrientlevel168.save
nutrientlevel169.save
nutrientlevel170.save
nutrientlevel171.save
nutrientlevel172.save
nutrientlevel173.save
nutrientlevel174.save
nutrientlevel175.save
nutrientlevel176.save
nutrientlevel177.save
nutrientlevel178.save
nutrientlevel179.save
nutrientlevel180.save
nutrientlevel181.save
nutrientlevel182.save
nutrientlevel183.save
nutrientlevel184.save
nutrientlevel185.save
nutrientlevel186.save
nutrientlevel187.save
nutrientlevel188.save
nutrientlevel189.save
nutrientlevel190.save
nutrientlevel191.save
nutrientlevel192.save
nutrientlevel193.save
nutrientlevel194.save
nutrientlevel195.save
nutrientlevel196.save
nutrientlevel197.save
nutrientlevel198.save
nutrientlevel199.save
nutrientlevel200.save
nutrientlevel201.save
nutrientlevel202.save
nutrientlevel203.save
nutrientlevel204.save
nutrientlevel205.save
nutrientlevel206.save
nutrientlevel207.save
nutrientlevel208.save
nutrientlevel209.save
nutrientlevel210.save
nutrientlevel211.save
nutrientlevel212.save
nutrientlevel213.save
nutrientlevel214.save
nutrientlevel215.save
nutrientlevel216.save
nutrientlevel217.save
nutrientlevel218.save
nutrientlevel219.save
nutrientlevel220.save
nutrientlevel221.save
nutrientlevel222.save
nutrientlevel223.save
nutrientlevel224.save
nutrientlevel225.save
nutrientlevel226.save
nutrientlevel227.save
nutrientlevel228.save
nutrientlevel229.save
nutrientlevel230.save
nutrientlevel231.save
nutrientlevel232.save
nutrientlevel233.save
nutrientlevel234.save
nutrientlevel235.save
nutrientlevel236.save
nutrientlevel237.save
nutrientlevel238.save
nutrientlevel239.save
nutrientlevel240.save
nutrientlevel241.save
nutrientlevel242.save
nutrientlevel243.save
nutrientlevel244.save
nutrientlevel245.save
nutrientlevel246.save
nutrientlevel247.save
nutrientlevel248.save
nutrientlevel249.save
nutrientlevel250.save
nutrientlevel251.save
nutrientlevel252.save
nutrientlevel253.save
nutrientlevel254.save
nutrientlevel255.save
nutrientlevel256.save
nutrientlevel257.save
nutrientlevel258.save
nutrientlevel259.save
nutrientlevel260.save
nutrientlevel261.save
nutrientlevel262.save
nutrientlevel263.save
nutrientlevel264.save
nutrientlevel265.save
nutrientlevel266.save
nutrientlevel267.save
nutrientlevel268.save
nutrientlevel269.save
nutrientlevel270.save
nutrientlevel271.save
nutrientlevel272.save
nutrientlevel273.save
nutrientlevel274.save
nutrientlevel275.save
nutrientlevel276.save
nutrientlevel277.save
nutrientlevel278.save
nutrientlevel279.save
nutrientlevel280.save
nutrientlevel281.save
nutrientlevel282.save
nutrientlevel283.save
nutrientlevel284.save
nutrientlevel285.save
nutrientlevel286.save
nutrientlevel287.save
nutrientlevel288.save
nutrientlevel289.save
nutrientlevel290.save
nutrientlevel291.save
nutrientlevel292.save
nutrientlevel293.save
nutrientlevel294.save
nutrientlevel295.save
nutrientlevel296.save
nutrientlevel297.save
nutrientlevel298.save
nutrientlevel299.save
nutrientlevel300.save
nutrientlevel301.save
nutrientlevel302.save
nutrientlevel303.save
nutrientlevel304.save
nutrientlevel305.save
nutrientlevel306.save
nutrientlevel307.save
nutrientlevel308.save
nutrientlevel309.save
nutrientlevel310.save
nutrientlevel311.save
nutrientlevel312.save
nutrientlevel313.save
nutrientlevel314.save
nutrientlevel315.save
nutrientlevel316.save
nutrientlevel317.save
nutrientlevel318.save
nutrientlevel319.save
nutrientlevel320.save
nutrientlevel321.save
nutrientlevel322.save
nutrientlevel323.save
nutrientlevel324.save
nutrientlevel325.save
nutrientlevel326.save
nutrientlevel327.save
nutrientlevel328.save
nutrientlevel329.save
nutrientlevel330.save
nutrientlevel331.save
nutrientlevel332.save
nutrientlevel333.save
nutrientlevel334.save
nutrientlevel335.save
nutrientlevel336.save
nutrientlevel337.save
nutrientlevel338.save
nutrientlevel339.save
nutrientlevel340.save
nutrientlevel341.save
nutrientlevel342.save
nutrientlevel343.save
nutrientlevel344.save
nutrientlevel345.save
nutrientlevel346.save
nutrientlevel347.save
nutrientlevel348.save
nutrientlevel349.save
nutrientlevel350.save
nutrientlevel351.save
nutrientlevel352.save
nutrientlevel353.save
nutrientlevel354.save
nutrientlevel355.save
nutrientlevel356.save
nutrientlevel357.save
nutrientlevel358.save
nutrientlevel359.save
nutrientlevel360.save
nutrientlevel361.save
nutrientlevel362.save
nutrientlevel363.save
nutrientlevel364.save
nutrientlevel365.save
nutrientlevel366.save
nutrientlevel367.save
nutrientlevel368.save
nutrientlevel369.save
nutrientlevel370.save
nutrientlevel371.save
nutrientlevel372.save
nutrientlevel373.save
nutrientlevel374.save
nutrientlevel375.save
nutrientlevel376.save
nutrientlevel377.save
nutrientlevel378.save
nutrientlevel379.save
nutrientlevel380.save
nutrientlevel381.save
nutrientlevel382.save
nutrientlevel383.save
nutrientlevel384.save
nutrientlevel385.save
nutrientlevel386.save
nutrientlevel387.save
nutrientlevel388.save
nutrientlevel389.save
nutrientlevel390.save
nutrientlevel391.save
nutrientlevel392.save
nutrientlevel393.save
nutrientlevel394.save
nutrientlevel395.save
nutrientlevel396.save
nutrientlevel397.save
nutrientlevel398.save
nutrientlevel399.save
