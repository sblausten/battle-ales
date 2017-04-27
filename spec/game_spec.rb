require_relative '../model/game'

describe Game do

  subject(:game) { described_class.new }
  let (:cristina) { double :player }
  let (:sam) { double :player }

  describe '#attack' do
	  it 'reduces players HP by 10' do
	    expect(game).to respond_to(:attack).with(1).argument
	  end
	end
end
