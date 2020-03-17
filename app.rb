require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('controllers/foods_controller')
require_relative('controllers/favourites_controller')
require_relative('controllers/food_diary_controller')
require_relative('controllers/food_diary_controller')

get '/' do
  erb( :index )
end
