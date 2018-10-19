require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/roll_die' do
  rand(1..6).to_s
end

get '/name/:first/:last' do
  return params[:first]
end

get '/friends/:number' do
  friends = ["Joey", "Monica", "Chandler", "Rachael", "Ross", "Phoebe"]
  index = params[:number].to_i
  return friends[index]
end
