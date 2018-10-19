require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative './models/calculator'

also_reload('./models/*')

get '/add/:first_num/:second_num' do
  calculator = Calculator.new( params[:first_num].to_i, params[:second_num].to_i )
  @calculator_result = calculator.add.to_s
  erb :result
end

get '/subtract/:first_num/:second_num' do
  calculator = Calculator.new( params[:first_num].to_i, params[:second_num].to_i )
  @ccalculator_result = calculator.subtract.to_s
  erb :result
end

get '/multiply/:first_num/:second_num' do
  calculator = Calculator.new( params[:first_num].to_i, params[:second_num].to_i )
  @calculator_result = calculator.multiply.to_s
  erb :result
end

get '/divide/:first_num/:second_num' do
  calculator = Calculator.new( params[:first_num].to_f, params[:second_num].to_f )
  @calculator_result = calculator.divide.to_s
  erb :result 
end

get '/' do
  erb :home
end
get '/about_us' do
  erb :about_us
end
