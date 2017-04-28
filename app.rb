require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  before do 
    @game = Game.game
  end
  
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.game = Game.new(player_1, player_2)    
    redirect('/play')
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    erb :attack
  end

  run! if app_file == $0

end
