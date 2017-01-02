require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'cardcolour'
require 'cardfigure'

RSpec.describe 'table.rb' do
  describe '#constructor' do
    it 'should be defined' do
      expect { Table.new(Deck.new) }.not_to raise_error
    end
    it 'should add one card to stack' do
      table = Table.new(Deck.new)
      expect(table.card_stack.count).to eq 1
    end
    it 'should be 8 rows in card_matrix' do
      table = Table.new(Deck.new)
      expect(table.card_matrix.length).to eq 8
    end
    it 'should be 7 columns in card_matrix' do
      table = Table.new(Deck.new)
      expect(table.card_matrix[0].length).to eq 7
    end
  end
  describe '#get_card_from_matrix' do
    it 'should return good card' do
      deck = Deck.new
      card = deck.cards[7]
      table = Table.new(deck)
      expect(table.get_card_from_matrix(1, 0).equals(card)).to eq true
    end
    it 'should set card to nil' do
      deck = Deck.new
      table = Table.new(deck)
      table.get_card_from_matrix(1, 0)
      expect(table.card_matrix[1][0]).to eq nil
    end
  end
  describe '#pop_card_from_stack' do
    it 'should pop good card' do
      deck = Deck.new
      table = Table.new(deck)
      card = Card.new(CardColour::SPADES, CardFigure::ACE)
      table.card_stack.push(card)
      expect(table.pop_card_from_stack).to eq card
    end
  end
  describe '#push_card_to_stack' do
    it 'should push good card' do
      deck = Deck.new
      table = Table.new(deck)
      card = Card.new(CardColour::SPADES, CardFigure::ACE)
      table.push_card_to_stack(card)
      expect(table.card_stack.pop).to eq card
    end
  end
end
