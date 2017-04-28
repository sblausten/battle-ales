require 'game'

describe Game do
  let (:cristina) { double :player_1, hp: 60 }
  let (:sam) { double :player_2, hp: 60 }
  subject(:game) { described_class.new(cristina, sam) }

  describe '#self.game' do
    it 'is responded to by Game' do
      expect(Game).to respond_to :game
    end
  end

  describe '#self.game=' do
    it 'sets the variable returned by self.game' do
      new_game = Game.new(sam, cristina)
      Game.game = new_game
      expect(Game.game).to eq new_game
    end
  end

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

  describe '#lose?' do
    it 'initializes as false' do
      expect(game.lose?).to be false
    end

    it 'sends hp message to players' do
      expect(sam).to receive(:hp)
      game.lose?
    end
    
    it 'returns true if a player has 0 HP' do
      allow(sam).to receive(:hp).and_return 0
      allow(cristina).to receive(:hp).and_return 10
      expect(game.lose?).to be true
    end
  end


end
