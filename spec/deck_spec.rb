require 'simplecov'
SimpleCov.start

require 'card'
require 'deck'
require 'card_colour'
require 'card_figure'

RSpec.describe 'deck.rb' do
  let(:deck) { Deck.new }
  describe '#constructor' do
    it 'should be defined' do
      expect { Deck.new }.not_to raise_error
    end
    it 'should have 52 cards' do
      expect(deck.cards.count).to eq 52
    end
    it 'should have 13 spades' do
      count = 0
      deck.cards.each do |card|
        count += 1 if card.colour == CardColour::SPADES
      end
      expect(count).to eq 13
    end
    it 'should have 13 hearts' do
      count = 0
      deck.cards.each do |card|
        count += 1 if card.colour == CardColour::HEART
      end
      expect(count).to eq 13
    end
    it 'should have 13 diamonds' do
      count = 0
      deck.cards.each do |card|
        count += 1 if card.colour == CardColour::DIAMOND
      end
      expect(count).to eq 13
    end
    it 'should have 13 clubs' do
      count = 0
      deck.cards.each do |card|
        count += 1 if card.colour == CardColour::CLUB
      end
      expect(count).to eq 13
    end
  end
  describe '#shuffle' do
    it 'should not be the same order' do
      temp = Deck.new
      condition = true
      deck.shuffle
      (0..(deck.cards.count - 1)).each do |i|
        condition = false unless deck.cards[i].equals(temp.cards[i])
      end
      expect(condition).to eq false
    end
  end
end
