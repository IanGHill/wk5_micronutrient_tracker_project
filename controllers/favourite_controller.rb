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
  "hello"
  erb( :"favourite/index" )
end
