require 'rubygems'
require 'sinatra'

get '/hello/:name' do 
  "hey there #{params[:name]}"
end
