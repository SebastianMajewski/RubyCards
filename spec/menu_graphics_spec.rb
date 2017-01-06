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
      expect { MenuGraphics.new }.to raise_error NoMethodError
    end
  end
  describe '#get_graphic' do
    it 'should return array' do
      actions = [Actions::SURRENDER, Actions::GET_CARD_FROM_MATRIX, Actions::PUT_CARD]
      expect(MenuGraphics.get_graphic(actions).class).to eq Array
    end
    it 'should return 4 element array' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      player = Player.new
      player.add_card(Card.new(CardColour::SPADES, CardFigure::TWO))
      actions = [Actions::END_TURN, Actions::GET_CARD_FROM_MATRIX, Actions::PUT_CARD]
      expect(MenuGraphics.get_graphic(actions).count).to eq 4
    end
  end
end
