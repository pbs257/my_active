require 'sinatra'
require 'json'
require_relative '../lib/app_helper'
require_relative '../lib/app_lib'
set :bind, '0.0.0.0'
set :root, File.dirname(__FILE__)
set :views, settings.root + '/../views'
set :public_folder, settings.root + '/../public'


get '/shop/customer' do
  @my_active_product = ""
  @my_active_customer = "active"
  @customers = Customer.all
  erb :home, :layout => false do
    erb :customers
  end
end


get '/shop/orders' do
  @my_active_product = ""
  @my_active_order = "active"
  @orders = Order.all
  erb :home, :layout => false do
    erb :orders
  end
end

get '/shop/product' do
  @next = params[:nextpage].to_i
  @previous = params[:prevouspage].to_i
  @my_active_product = "active"
  @my_active_order = ""
  if @next == 0 and @previous == 0
    @products = Product.take 10
    @next = 2
    @previous = 0
  elsif not @next == 0
    @next = @next + 1
    @previous = @next - 1
    @products = Product.offset((@previous) * 10).take(10)
  elsif not @previous == 0
    @next = @previous + 1
    @previous = @previous - 1
    @products = Product.offset(@previous).take(10)

  end

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
  #erb :product_delete
  redirect '/shop/product'
end

get '/shop/product/:id' do
  @id = params[:id]
  erb :home, :layout => false do
    erb :product
    end
end

get '/shop/index'do
  erb :home, :layout => false do
    erb :index
  end
end

post '/shop/product' do
  new_product = Product.new
  new_product.name = params[:name]
  new_product.price =params[:price]
  new_product.sku = params[:sku]
  new_product.save
end

get '/shop/test_view' do
  erb :test_view
end

put '/shop/product/:id' do
  #db.update product params[:description]
end

get '/shop/customer/color/' do
  "blue"
end

get '/shop/table_of_contents' do
  @my_active_order = ""
  @my_active_toc = "active"
  erb :home, :layout => false do
    erb :table_of_contents
    end
end

get '/shop/table_of_contents/github/' do
    erb :github
end