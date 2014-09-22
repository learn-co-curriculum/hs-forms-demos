require 'rubygems'
require 'sinatra'
require_relative 'lib/penguin.rb'

get '/' do 
  erb :index
end 

post '/results' do
  @penguin = Penguin.new(params[:name], params[:species], params[:size], params[:age])
  erb :penguin
end