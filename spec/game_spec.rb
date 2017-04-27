require_relative '../model/game'

describe Game do
  let (:cristina) { double Player }
  let (:sam) { double Player }
  subject(:game) { described_class.new(cristina, sam) }

  describe '#players' do
    it 'stores instances of Player class' do
      expect(game.player_1).to eq cristina
    end
  end

  describe '#attack' do
    it 'reduces players HP by 10' do
      expect(game).to respond_to(:attack).with(1).argument
    end
    it 'damages the player' do
      expect(sam).to receive(:damage)
      game.attack(sam)
    end
    # it 'returns error when not passed a valid Player instance' do
    # 	expect { game.attack("Sam") }.to raise_error(ArgumentError, "Not a valid Player instance")
    # end
  end

  describe '#switch_turn' do
    it 'starts game with Player 1' do
      expect(game.switch_turn).to eq sam
    end
    it 'switch to player 2' do
      game.switch_turn
      expect(game.switch_turn).to eq cristina
    end
    it 'switch to player 1' do
      game.switch_turn
      game.switch_turn
      expect(game.switch_turn).to eq sam
    end
  end

end
