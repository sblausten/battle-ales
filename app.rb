require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
    "value = " << session[:value].inspect
  end

  get '/:value' do
    session['value'] = params['value']
  end

  post '/play:value' do
    p params
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :play
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
  end

  run! if app_file == $0

end
