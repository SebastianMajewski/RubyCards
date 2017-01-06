require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'card_colour'
require 'card_figure'
require 'player_graphics'
require 'player'

RSpec.describe 'player_graphics.rb' do
  describe '#constructor' do
    it 'should not to be defined' do
      expect { PlayerGraphics.new }.to raise_error NoMethodError
    end
  end
  describe '#get_graphic' do
    it 'should return array' do
      player = Player.new
      player.add_card(Card.new(CardColour::SPADES, CardFigure::TWO))
      expect(PlayerGraphics.get_graphic(player).class).to eq Array
    end
    it 'should have 9 rows' do
      player = Player.new
      deck = Deck.new
      deck.cards.each do |card|
        player.add_card(card)
      end
      expect(PlayerGraphics.get_graphic(player).count).to eq 9
    end
  end
  describe '#get_ai_graphics' do
    it 'should return array' do
      player = Player.new
      player.add_card(Card.new(CardColour::SPADES, CardFigure::TWO))
      expect(PlayerGraphics.get_ai_graphics(player).class).to eq Array
    end
  end
end
