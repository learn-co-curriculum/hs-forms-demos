require 'rubygems'
require 'sinatra'
require 'shotgun'

get '/hello/:name' do 
  "hey there #{params[:name]}"
end
