class Game

  attr_reader :players
  
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(player)
		# raise ArgumentError, "Not a valid Player instance" unless player.is_a? Player
	 player.damage
	end

end
