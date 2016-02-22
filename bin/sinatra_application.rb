require 'sinatra'
require 'json'
require_relative '../lib/app_helper'
require_relative '../lib/app_lib'
set :bind, '0.0.0.0'
get '/shop/test' do
  p User.all
end

get '/shop/test2' do
  "<h1 style='color: blue'>Hello world</h1>
  <body>This is the body of the test.
  <ul><b>Unstructured list</b> time!</ul></body>"
end

get '/shop/customers' do
  output = "";
  output += "<table>"
  Customer.all.each do |c|
    output += "<tr><td>#{c.id}</td><td> #{c.name}</td></tr>"
  end
  output += "</table>"
end

get '/shop/products' do
  output = "";
  output += "<table>"
  Product.all.each do |c|
    output += "<tr><td>#{c.id}</td><td> #{c.name}</td><td> #{c.price}</td><td> #{c.description}</td></tr>"
  end
  output += "</table>"
end

get '/shop/orders' do
  output = "";
  output += "<table>"
  Order.all.each do |c|

    c_name = Customer.find c.customer_id.to_s
    c_name = c.customer.name
    output += "<tr><td>#{c.id}</td><td> #{c.customer_id}</td><td>#{c_name}</td></tr>"
  end
  output += "</table>"
end


