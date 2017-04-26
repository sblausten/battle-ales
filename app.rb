require 'sinatra/base'

class Battle < Sinatra::Base

  #get '/' do
  #  "Testing infrastructure working!"
  #end

  get '/' do
    #p params
    erb :index
    #params = [:name]
  end

  post '/names' do
    p params
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :names
  end

  run! if app_file == $0

end
