require 'game'

describe Game do
  let (:cristina) { double :player_1 }
  let (:sam) { double :player_2 }
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
  end

  describe '#turn' do
    it 'starts game as Player 1' do
      expect(game.turn).to eq cristina
    end
  end

  describe '#switch_turn' do
    it 'switches turn to other player' do
      game.switch_turn
      expect(game.turn).to eq sam
    end
    it 'switches successfully a second time' do
      game.switch_turn
      game.switch_turn
      expect(game.turn).to eq cristina
    end
  end


end
