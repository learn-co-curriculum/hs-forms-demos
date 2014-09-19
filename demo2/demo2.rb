require 'rubygems'
require 'sinatra'
require 'shotgun'

get '/hello' do
  "hey there #{params[:name]}"
end