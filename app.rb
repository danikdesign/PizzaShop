#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.db"}

class Product < ActiveRecord::Base
end

before do
  @products = Product.order 'is_best_offer DESC'
end

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/cart' do
  erb :cart
end

post '/cart' do
  erb :cart
end

post '/order' do

end