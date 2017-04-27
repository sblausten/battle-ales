require_relative '../model/player'

describe Player do
  it 'returns the Player\'s name' do
    player_1 = Player.new('Cristina')
    expect(player_1.name).to eq 'Cristina'
  end
end
