require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative './models/pizza_order'
also_reload('./models/*')

#INDEX
get '/pizza_orders' do
  @pizza_orders = PizzaOrder.all()
  erb( :index )
end

#NEW
get '/pizza_orders/new' do
  "New Order Form"
end

#SHOW
get '/pizza_orders/:id' do
  @pizza_order = PizzaOrder.find(params[:id])
  erb( :show )
end
