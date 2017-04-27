class Game

    def attack(player)
  		# raise ArgumentError, "Not a valid Player instance" unless player.is_a? Player
		player.damage
	end

end
