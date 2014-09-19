require 'rubygems'
require 'sinatra'
require 'shotgun'

get '/' do 
  erb :index
end 

post '/results' do
  "#{params}"
end