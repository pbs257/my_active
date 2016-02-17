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
  "#{Customer.name}"
end

