require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'card_colour'
require 'card_figure'
require 'menu_graphics'
require 'player'

RSpec.describe 'menu_graphics.rb' do
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
    it 'should return 5 element array' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      player = Player.new
      player.add_card(Card.new(CardColour::SPADES, CardFigure::TWO))
      expect(MenuGraphics.get_graphic(table, player).count).to eq 5
    end
  end
end
