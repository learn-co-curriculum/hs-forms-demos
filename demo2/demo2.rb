require 'rubygems'
require 'sinatra'


get '/hello' do
  "hey there #{params[:name]}"
end