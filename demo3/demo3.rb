require 'rubygems'
require 'sinatra'

get '/' do 
  erb :index
end 

post '/results' do
  "#{params}"
end