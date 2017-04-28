class Game

  attr_reader :turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = 1
  end

  def attack(player)
    # raise ArgumentError, "Not a valid Player instance" unless player.is_a? Player
    player.damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turn
  	if @turn == 1
  		@turn = 2
	  	player_2
  	elsif @turn == 2
  		@turn = 1
  		player_1
  	end	
  end

end
