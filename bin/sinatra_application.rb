require 'sinatra'
require 'json'
require_relative '../lib/app_helper'
require_relative '../lib/app_lib'
set :bind, '0.0.0.0'
set :views, settings.root + '/../views'


get '/shop/test' do
  p User.all
end

get '/shop/test2' do
  "<h1 style='color: blue'>Hello world</h1>
  <body>This is the body of the test.
  <ul><b>Unstructured list</b> time!</ul></body>"
end

get '/shop/customers' do
  erb :customers
end

get '/shop/products' do
  erb :home, :layout => false do
    erb :products
  end
end

get '/shop/orders' do
  erb :orders
end

get '/shop/product' do
  erb :home, :layout => false do
    erb :products
  end
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