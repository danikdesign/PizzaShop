#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'

set :database,{adapter: "sqlite3", database: "pizzashop.db"}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

before do
  @products = Product.all
  @orders = Order.all
end

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/cart' do

  erb 'Your cart is empty!'
end

post '/cart' do
  @orders_input = params[:orders_input]
  @items = parse_orders_input @orders_input

  @items.each do |item|
    item[0] = @products.find(item[0])
  end

  erb :cart
end

post '/place_order' do
  @order = Order.create params[:order]

  erb :order_placed
end

get '/show_orders' do
  @show_orders = Order.order 'created_at DESC'
  @show_orders.each do |order|
    order.orders_input = parse_orders_input order.orders_input
  end

  erb :show_orders
end


def parse_orders_input(orders_input)
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

  arr
end