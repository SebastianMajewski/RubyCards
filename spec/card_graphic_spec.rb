require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'cardcolour'
require 'cardfigure'
require 'card_graphics'

RSpec.describe 'card_graphics.rb' do
  describe '#constructor' do
    it 'should not to be defined' do
      expect { CardGraphics.new }.to raise_error
    end
  end
  describe '#get_graphic' do
    it 'should return good symbol' do
      card = Card.new(CardColour::SPADES, CardFigure::TWO)
      expect(CardGraphics.get_graphic(card)).to eq 'u\1F0A2'
    end
  end
  describe '#back_graphic' do
    it 'should return good symbol' do
      expect(CardGraphics.back_graphic).to eq 'u\1F0A0'
    end
  end
end
