require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Shhhh, this is a secret"
end

get '/notsecret' do
  "This is not very secret"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
