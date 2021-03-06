require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/order.rb' )
require_relative( '../models/manufacturer.rb' )
require_relative( '../models/transaction.rb' )
require_relative( '../models/order.rb' )
require_relative( '../models/shop.rb' )
require ('date')

#All
get '/orders' do
  @orders = Order.all()
  erb(:"orders/index")
end

#NEW
get '/orders/new' do
  @items = Item.all()
  @order = Order.new({"order_date" => DateTime.now,
    "is_sold" => true,
    "is_processed" => false
    })
  @order.save()
  erb(:"orders/new")
end

#ADD
get '/orders/add' do
  @items = Item.all()
  @orders = Order.all()
  erb ( :"orders/add" )
end

get '/orders/:id' do
  @order = Order.find(params[:id].to_i())
  erb(:"orders/show_item")
end

get '/orders/:id/edit' do
  @items = Item.all()
  @order = Order.find(params['id'])
  erb(:"orders/edit")
end

get '/orders/:id/view-transactions' do
  @order = Order.find(params['id'])
  erb(:"orders/view-transactions")
end

# post '/orders/:id' do
#   order = Order.new(params)
#   order.update()
#   redirect to "/orders/#{params['id']}"
# end

post '/orders/:id/add/:item_id' do
  transaction=Transaction.find_in_order(params['id'],params['item_id'])
  if transaction==nil
  transaction=Transaction.new({
    "item_id" => params['item_id'],
    "order_id" => params['id'],
    "amount" => params['amount']
    })
  transaction.save()
  else
  transaction.change_amount(params['amount'].to_i)
  transaction.update()
  end
  item = Item.find(params['item_id'])
  item.reduce_stock_level(params['amount'].to_i)
  item.update()
  redirect to "/orders/#{params['id']}/edit"
end


post '/orders/:order_id/remove/:item_id' do
  transaction=Transaction.find_in_order(params['order_id'].to_i, params['item_id'].to_i)
  item = Item.find(params['item_id'])
  item.raise_stock_level(transaction.amount)
  item.update()
  transaction.delete()
  redirect to "/orders/#{params['order_id']}/edit"
end

post '/orders/:order_id/process' do
  Order.process(params['order_id'])
  redirect to "/orders"
end

post '/orders/:order_id/delete' do
  Order.delete(params['order_id'])
  redirect to "/orders"
end


# post '/orders' do
#   Order.new(params).save
#   redirect to '/orders'
# end
