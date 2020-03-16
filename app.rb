require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/food_diary_controller')
require_relative('controllers/food_controller')
require_relative('controllers/favourite_controller')

get '/' do
  erb( :index )
end
