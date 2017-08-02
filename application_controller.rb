require 'bundler'
Bundler.require

require_relative './models/dog.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/dog' do
    @dog1 = Dog.new("Fido", "Lab", 5)
    erb :dog
  end
  
  get '/info' do
    erb :dog
  end


end