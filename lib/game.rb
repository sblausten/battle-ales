class Game

  attr_reader :turn

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

  private
  attr_accessor :players
  attr_writer :turn

end
