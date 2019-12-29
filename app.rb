require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "parakeet"
  end
  
  get "/" do 
    erb: index
  end
  
  post "/checkout" do
    session[:item] = params["item"]
    #session["name"] = "Victoria"
    @session = session
    
    erb :checkout
  end 
  
end