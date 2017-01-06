require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'card_colour'
require 'card_figure'
require 'player'
require 'ai'
require 'actions'

RSpec.describe 'ai.rb' do
  describe '#constructor' do
    it 'should be defined' do
      expect { Ai.new }.not_to raise_error
    end
  end
  describe '#take_random' do
    it 'should return card' do
      table = Table.new(Deck.new)
      ai = Ai.new
      expect(ai.take_random(table).class).to eq Card
    end
    it 'should return nil' do
      table = Table.new(Deck.new)
      table.card_matrix.each do |array|
        for i in 0..array.length
          array[i] = nil
        end
      end
      ai = Ai.new
      expect(ai.take_random(table)).to eq nil
    end
  end
  describe '#suitable_card' do
    it 'should return card' do
      table = Table.new(Deck.new)
      ai = Ai.new
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::ACE))
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      expect(ai.suitable_card(table).class).to eq Card
    end
    it 'should return nil' do
      table = Table.new(Deck.new)
      ai = Ai.new
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::ACE))
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      expect(ai.suitable_card(table)).to eq nil
    end
  end
  describe '#first_card' do
    it 'should SURRENDER' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::ACE))
      expect(ai.first_card(table)).to eq Actions::SURRENDER
    end
    it 'should END_TURN' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      expect(ai.first_card(table)).to eq Actions::END_TURN
    end
    it 'should PUT_CARD from matrix' do
      table = Table.new(Deck.new)
      ai = Ai.new
      table.card_matrix[0][0] = Card.new(CardColour::SPADES, CardFigure::TWO)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::KING))
      expect(ai.first_card(table)).to eq Actions::PUT_CARD
    end
    it 'should PUT_CARD from own' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::ACE))
      expect(ai.first_card(table)).to eq Actions::PUT_CARD
    end
  end
  describe '#second_card' do
    it 'should END_TURN' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      expect(ai.second_card(table)).to eq Actions::END_TURN
    end
    it 'should PUT_CARD from matrix' do
      table = Table.new(Deck.new)
      ai = Ai.new
      table.card_matrix[0][0] = Card.new(CardColour::SPADES, CardFigure::ACE)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::KING))
      expect(ai.second_card(table)).to eq Actions::PUT_CARD
    end
    it 'should PUT_CARD from own' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::ACE))
      expect(ai.second_card(table)).to eq Actions::PUT_CARD
    end
  end
  describe '#make_turn' do
    it 'should END_TURN' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      expect(ai.make_turn(table)).to eq Actions::END_TURN
    end
    it 'should SURRENDER' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::ACE))
      expect(ai.make_turn(table)).to eq Actions::SURRENDER
    end
    it 'should END_TURN in second_card' do
      table = Table.new(Deck.new)
      cards = 51
      (1..7).each do |i|
        table.get_card_from_matrix(0, i)
      end
      (1..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      table.card_matrix[0][0] = Card.new(CardColour::SPADES, CardFigure::ACE)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::KING))
      expect(ai.make_turn(table)).to eq Actions::END_TURN
    end
    it 'should PUT_CARD from matrix' do
      table = Table.new(Deck.new)
      ai = Ai.new
      table.card_matrix[0][0] = Card.new(CardColour::SPADES, CardFigure::ACE)
      table.card_stack.push(Card.new(CardColour::SPADES, CardFigure::KING))
      expect(ai.make_turn(table)).to eq Actions::PUT_CARD
    end
    it 'should PUT_CARD from hand' do
      table = Table.new(Deck.new)
      cards = 51
      (0..6).each do |i|
        (0..7).each do |j|
          if cards != 0
            table.get_card_from_matrix(i, j)
            cards -= 1
          end
        end
      end
      ai = Ai.new
      ai.me.cards.push(Card.new(CardColour::DIAMOND, CardFigure::TWO))
      ai.me.cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
      table.card_stack.push(Card.new(CardColour::DIAMOND, CardFigure::ACE))
      expect(ai.make_turn(table)).to eq Actions::PUT_CARD
    end
  end
end
