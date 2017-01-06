require 'simplecov'
SimpleCov.start

require 'card'
require 'card_colour'
require 'card_figure'

RSpec.describe 'card.rb' do
  let(:card) { Card.new(CardColour::SPADES, CardFigure::ACE) }
  describe '#constructor' do
    it 'should be defined' do
      expect { Card.new(CardColour::HEART, CardFigure::KING) }.not_to raise_error
    end
    it 'should init colour with good value' do
      expect(card.colour).to eq CardColour::SPADES
    end
    it 'should init figure with good value' do
      expect(card.figure).to eq CardFigure::ACE
    end
  end
  describe '#equals' do
    it 'should be equal' do
      tempcard = Card.new(CardColour::SPADES, CardFigure::ACE)
      expect(card.equals(tempcard)).to eq true
    end
    it 'not should be equal becouse of colour' do
      tempcard = Card.new(CardColour::HEART, CardFigure::ACE)
      expect(card.equals(tempcard)).to eq false
    end
    it 'not should be equal becouse of figure' do
      tempcard = Card.new(CardColour::SPADES, CardFigure::KING)
      expect(card.equals(tempcard)).to eq false
    end
    it 'not should be equal becouse of class' do
      expect(card.equals(1)).to eq false
    end
  end
end
