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

get '/cat' do
  "<div style='border: 3px dashed red;'>
     <img src='http://bit.ly/1eze8aE'>
   </div>"
end