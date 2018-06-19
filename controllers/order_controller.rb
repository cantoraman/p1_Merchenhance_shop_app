require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/order.rb' )
require_relative( '../models/manufacturer.rb' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/order.rb' )
require_relative( '../models/shop.rb' )


#All
get '/orders' do
  @orders = Order.all()
  erb(:"orders/index")
end

#NEW
get '/orders/new' do
  @orders = Order.all()
  erb ( :"orders/new" )
end

get '/orders/:id' do
  @order = Order.find(params[:id].to_i())
  erb(:"orders/show_item")
end

get '/orders/:id/edit' do
  @order = Order.find(params['id'])
  erb(:"orders/edit")
end

post '/orders/:id' do
  order = Order.new(params)
  order.update()
  redirect to "/orders/#{params['id']}"
end

post '/orders' do
  Order.new(params).save
  redirect to '/orders'
end