require 'rubygems'
require 'sinatra'
require 'shotgun'

get '/' do 
  erb :index
end 


post '/' do
  "#{params}"
end