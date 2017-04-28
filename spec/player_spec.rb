require 'player'

describe Player do
  subject(:cristina) { Player.new('Cristina') }
  subject(:sam) { Player.new('Sam') }
  describe '#name' do
    it 'returns the Player\'s name' do
      expect(cristina.name).to eq 'Cristina'
    end
  end

  describe '#hp' do
    it 'returns the Player\'s name' do
      expect(cristina.hp).to eq Player::DEFAULT_HP
    end
    it 'returns the Player\'s name' do
      cristina = Player.new('Cristina', 100)
      expect(cristina.hp).to eq 100
    end
  end

  describe '#damage' do
    it 'reduces players HP by at least 10' do
      expect { cristina.damage }.to change { cristina.hp }.by_at_least -10
    end
    it 'reduces players HP by at most 30' do
      expect { cristina.damage }.to change { cristina.hp }.by_at_least -30
    end
  end
end
