require 'sinatra'
require 'json'
require_relative '../lib/app_helper'
require_relative '../lib/app_lib'
set :bind, '0.0.0.0'
set :views, settings.root + '/../views'


get '/shop/test' do
  p User.all
end

get '/shop/customers' do
  erb :home, :layout => false do
    erb :customers
  end
end


get '/shop/orders' do
  erb :home, :layout => false do
    erb :orders
  end
end

get '/shop/product' do
  erb :home, :layout => false do
    erb :products
  end
end

get '/shop/product/new' do
  erb :home, :layout => false do
    erb :product_new
  end
end


post '/shop/product/delete' do
  p = Product.find params[:id]
  p.delete

end

get '/shop/product/:id' do
  @id = params[:id]
  erb :home, :layout => false do
    erb :product
    end
end

get '/shop/product/1' do
  erb :product
end

get '/shop/bootstrap_tester' do
  erb :bootstrap_tester
end

get '/shop/index'do
  erb :index
end



post '/shop/product' do
  new_product = Product.new
  new_product.name = params[:name]
  new_product.price =params[:price]
  new_product.sku = params[:sku]
  new_product.save
end

put '/shop/product/:id' do
  #db.update product params[:description]
end
