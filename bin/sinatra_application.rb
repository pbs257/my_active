require 'sinatra'
require 'json'
require_relative '../lib/app_helper'
require_relative '../lib/app_lib'
set :bind, '0.0.0.0'
get '/shop/test' do
  p User.all
end


