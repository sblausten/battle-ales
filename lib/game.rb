

class Game

  attr_reader :turn

  def self.game
    @game
  end

  def self.game=(new_game)
    @game = new_game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def attack(player)
    player.damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turn
    self.turn = receiver
  end

  def receiver
    players.select { |player| player != turn }.first
  end

  def lose?
    (player_1.hp == 0) || (player_2.hp == 0)
  end

  private
  attr_accessor :players
  attr_writer :turn

end
