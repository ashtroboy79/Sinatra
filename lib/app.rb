require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  "Hello"
end

get '/secret' do
  "Shhhh it's a secret"
end

get '/makers' do
  "Im so tired :)"
end

get '/coffee' do
  "Im buzzing"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end