require 'sinatra/base'
require_relative 'model/player.rb'
require_relative 'model/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)    
    redirect('/play')
  end

  get '/play' do
    @player_1_name, @player_1_hp = $game.player_1.name, $game.player_1.hp
    @player_2_name, @player_2_hp = $game.player_2.name, $game.player_2.hp
    erb :play
  end

  get '/attack' do
    $game.attack($game.switch_turn)
    @player_1_name, @player_1_hp = $game.player_1.name, $game.player_1.hp
    @player_2_name, @player_2_hp = $game.player_2.name, $game.player_2.hp
    erb :attack
  end

  run! if app_file == $0

end
