require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'cardcolour'
require 'cardfigure'
require 'player'

RSpec.describe 'player.rb' do
  describe '#constructor' do
    it 'should initialize cards as array' do
      player = Player.new
      expect(player.cards.class).to eq Array
    end
  end
  describe '#add_card' do
    it 'should add card' do
      player = Player.new
      card = Card.new(CardColour::SPADES, CardFigure::TWO)
      player.add_card(card)
      expect(player.cards[0]).to eq card
    end
  end
  describe '#remove_card' do
    it 'should return card' do
      player = Player.new
      card = Card.new(CardColour::SPADES, CardFigure::TWO)
      player.cards.push(card)
      expect(player.remove_card(0)).to eq card
    end
    it 'should delete card in player deck' do
      player = Player.new
      card = Card.new(CardColour::SPADES, CardFigure::TWO)
      player.cards.push(card)
      player.remove_card(0)
      expect(player.cards.count).to eq 0
    end
  end
  describe '#cards?' do
    it 'should return true' do
      player = Player.new
      card = Card.new(CardColour::SPADES, CardFigure::TWO)
      player.cards.push(card)
      expect(player.cards?).to eq true
    end
    it 'should return false' do
      player = Player.new
      expect(player.cards?).to eq false
    end
  end
end
