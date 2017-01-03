require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'cardcolour'
require 'cardfigure'
require 'rules'

RSpec.describe 'rules.rb' do
  describe '#constructor' do
    it 'should not be defined' do
      expect { Rules.new }.to raise_error NoMethodError
    end
  end
  describe '#can_get_card_from_stack' do
    it 'should be false' do
      deck = Deck.new
      table = Table.new(deck)
      expect(Rules.can_get_card_from_stack(table)).to eq false
    end
    it 'should be true' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      expect(Rules.can_get_card_from_stack(table)).to eq true
    end
  end
  describe '#can_get_any_card_from_matrix' do
    it 'should be true' do
      deck = Deck.new
      table = Table.new(deck)
      expect(Rules.can_get_any_card_from_matrix(table)).to eq true
    end
    it 'should return false' do
      deck = Deck.new
      table = Table.new(deck)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      expect(Rules.can_get_any_card_from_matrix(table)).to eq false
    end
  end
  describe '#can_put_card_to_stack' do
    it 'should be true becouse of colour' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::TWO))
      card = Card.new(CardColour::DIAMOND, CardFigure::SIX)
      expect(Rules.can_put_card_to_stack(table, card)).to eq true
    end
    it 'should be true becouse of figure' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::TWO))
      card = Card.new(CardColour::CLUB, CardFigure::TWO)
      expect(Rules.can_put_card_to_stack(table, card)).to eq true
    end
    it 'should be false' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::TWO))
      card = Card.new(CardColour::CLUB, CardFigure::SIX)
      expect(Rules.can_put_card_to_stack(table, card)).to eq false
    end
  end
end
