require_relative '../model/game'

describe Game do

  subject(:game) { described_class.new }
  let (:cristina) { double Player }
  let (:sam) { double Player }

  	describe

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

	describe '#players' do
		it 'stores instances of Player class' do

			player_1 = game.players[0]
			expect(game.players).to eq []
	end

end
