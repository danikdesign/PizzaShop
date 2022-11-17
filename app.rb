#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.db"}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
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
  orders_input = params[:orders_input]
  @order = parse_orders_input orders_input


  erb "Hello it's your order: #{@order.inspect}"
end

post '/order' do
  @order = Order.new params[:order]

  if @order.save
    erb 'Thank you. We received your order. Our manager will contact you soon'
  else
    @error = @order.errors.full_messages.first
    erb :cart
  end
end

def parse_orders_input orders_input
  s1 = orders_input.split(',')
  arr = []

  s1.each do |x|
    s2 = x.split('=')
    s3 = s2[0].split('_')

    id = s3[1]
    cnt = s2[1]

    arr2 = [id, cnt]

    arr.push arr2
  end

  return arr
end