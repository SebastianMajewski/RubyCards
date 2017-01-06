require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'card_colour'
require 'card_figure'
require 'card_graphics'

RSpec.describe 'card_graphics.rb' do
  describe '#constructor' do
    it 'should not to be defined' do
      expect { CardGraphics.new }.to raise_error NoMethodError
    end
  end
  describe '#get_graphic' do
    it 'should return spades two' do
      card = Card.new(CardColour::SPADES, CardFigure::TWO)
      expect(CardGraphics.get_graphic(card)).to eq '🂢'
    end
    it 'should return spades three' do
      card = Card.new(CardColour::SPADES, CardFigure::THREE)
      expect(CardGraphics.get_graphic(card)).to eq '🂣'
    end
    it 'should return spades four' do
      card = Card.new(CardColour::SPADES, CardFigure::FOUR)
      expect(CardGraphics.get_graphic(card)).to eq '🂤'
    end
    it 'should return spades five' do
      card = Card.new(CardColour::SPADES, CardFigure::FIVE)
      expect(CardGraphics.get_graphic(card)).to eq '🂥'
    end
    it 'should return spades six' do
      card = Card.new(CardColour::SPADES, CardFigure::SIX)
      expect(CardGraphics.get_graphic(card)).to eq '🂦'
    end
    it 'should return spades seven' do
      card = Card.new(CardColour::SPADES, CardFigure::SEVEN)
      expect(CardGraphics.get_graphic(card)).to eq '🂧'
    end
    it 'should return spades eight' do
      card = Card.new(CardColour::SPADES, CardFigure::EIGHT)
      expect(CardGraphics.get_graphic(card)).to eq '🂨'
    end
    it 'should return spades nine' do
      card = Card.new(CardColour::SPADES, CardFigure::NINE)
      expect(CardGraphics.get_graphic(card)).to eq '🂩'
    end
    it 'should return spades ten' do
      card = Card.new(CardColour::SPADES, CardFigure::TEN)
      expect(CardGraphics.get_graphic(card)).to eq '🂪'
    end
    it 'should return spades jack' do
      card = Card.new(CardColour::SPADES, CardFigure::JACK)
      expect(CardGraphics.get_graphic(card)).to eq '🂫'
    end
    it 'should return spades queen' do
      card = Card.new(CardColour::SPADES, CardFigure::QUEEN)
      expect(CardGraphics.get_graphic(card)).to eq '🂭'
    end
    it 'should return spades king' do
      card = Card.new(CardColour::SPADES, CardFigure::KING)
      expect(CardGraphics.get_graphic(card)).to eq '🂮'
    end
    it 'should return spades ace' do
      card = Card.new(CardColour::SPADES, CardFigure::ACE)
      expect(CardGraphics.get_graphic(card)).to eq '🂡'
    end

    it 'should return heart two' do
      card = Card.new(CardColour::HEART, CardFigure::TWO)
      expect(CardGraphics.get_graphic(card)).to eq '🂲'
    end
    it 'should return heart three' do
      card = Card.new(CardColour::HEART, CardFigure::THREE)
      expect(CardGraphics.get_graphic(card)).to eq '🂳'
    end
    it 'should return heart four' do
      card = Card.new(CardColour::HEART, CardFigure::FOUR)
      expect(CardGraphics.get_graphic(card)).to eq '🂴'
    end
    it 'should return heart five' do
      card = Card.new(CardColour::HEART, CardFigure::FIVE)
      expect(CardGraphics.get_graphic(card)).to eq '🂵'
    end
    it 'should return heart six' do
      card = Card.new(CardColour::HEART, CardFigure::SIX)
      expect(CardGraphics.get_graphic(card)).to eq '🂶'
    end
    it 'should return heart seven' do
      card = Card.new(CardColour::HEART, CardFigure::SEVEN)
      expect(CardGraphics.get_graphic(card)).to eq '🂷'
    end
    it 'should return heart eight' do
      card = Card.new(CardColour::HEART, CardFigure::EIGHT)
      expect(CardGraphics.get_graphic(card)).to eq '🂸'
    end
    it 'should return heart nine' do
      card = Card.new(CardColour::HEART, CardFigure::NINE)
      expect(CardGraphics.get_graphic(card)).to eq '🂹'
    end
    it 'should return heart ten' do
      card = Card.new(CardColour::HEART, CardFigure::TEN)
      expect(CardGraphics.get_graphic(card)).to eq '🂺'
    end
    it 'should return heart jack' do
      card = Card.new(CardColour::HEART, CardFigure::JACK)
      expect(CardGraphics.get_graphic(card)).to eq '🂻'
    end
    it 'should return heart queen' do
      card = Card.new(CardColour::HEART, CardFigure::QUEEN)
      expect(CardGraphics.get_graphic(card)).to eq '🂽'
    end
    it 'should return heart king' do
      card = Card.new(CardColour::HEART, CardFigure::KING)
      expect(CardGraphics.get_graphic(card)).to eq '🂾'
    end
    it 'should return heart ace' do
      card = Card.new(CardColour::HEART, CardFigure::ACE)
      expect(CardGraphics.get_graphic(card)).to eq '🂱'
    end

    it 'should return diamond two' do
      card = Card.new(CardColour::DIAMOND, CardFigure::TWO)
      expect(CardGraphics.get_graphic(card)).to eq '🃂'
    end
    it 'should return diamond three' do
      card = Card.new(CardColour::DIAMOND, CardFigure::THREE)
      expect(CardGraphics.get_graphic(card)).to eq '🃃'
    end
    it 'should return diamond four' do
      card = Card.new(CardColour::DIAMOND, CardFigure::FOUR)
      expect(CardGraphics.get_graphic(card)).to eq '🃄'
    end
    it 'should return diamond five' do
      card = Card.new(CardColour::DIAMOND, CardFigure::FIVE)
      expect(CardGraphics.get_graphic(card)).to eq '🃅'
    end
    it 'should return diamond six' do
      card = Card.new(CardColour::DIAMOND, CardFigure::SIX)
      expect(CardGraphics.get_graphic(card)).to eq '🃆'
    end
    it 'should return diamond seven' do
      card = Card.new(CardColour::DIAMOND, CardFigure::SEVEN)
      expect(CardGraphics.get_graphic(card)).to eq '🃇'
    end
    it 'should return diamond eight' do
      card = Card.new(CardColour::DIAMOND, CardFigure::EIGHT)
      expect(CardGraphics.get_graphic(card)).to eq '🃈'
    end
    it 'should return diamond nine' do
      card = Card.new(CardColour::DIAMOND, CardFigure::NINE)
      expect(CardGraphics.get_graphic(card)).to eq '🃉'
    end
    it 'should return diamond ten' do
      card = Card.new(CardColour::DIAMOND, CardFigure::TEN)
      expect(CardGraphics.get_graphic(card)).to eq '🃊'
    end
    it 'should return diamond jack' do
      card = Card.new(CardColour::DIAMOND, CardFigure::JACK)
      expect(CardGraphics.get_graphic(card)).to eq '🃋'
    end
    it 'should return diamond queen' do
      card = Card.new(CardColour::DIAMOND, CardFigure::QUEEN)
      expect(CardGraphics.get_graphic(card)).to eq '🃍'
    end
    it 'should return diamond king' do
      card = Card.new(CardColour::DIAMOND, CardFigure::KING)
      expect(CardGraphics.get_graphic(card)).to eq '🃎'
    end
    it 'should return diamond ace' do
      card = Card.new(CardColour::DIAMOND, CardFigure::ACE)
      expect(CardGraphics.get_graphic(card)).to eq '🃁'
    end

    it 'should return club two' do
      card = Card.new(CardColour::CLUB, CardFigure::TWO)
      expect(CardGraphics.get_graphic(card)).to eq '🃒'
    end
    it 'should return club three' do
      card = Card.new(CardColour::CLUB, CardFigure::THREE)
      expect(CardGraphics.get_graphic(card)).to eq '🃓'
    end
    it 'should return club four' do
      card = Card.new(CardColour::CLUB, CardFigure::FOUR)
      expect(CardGraphics.get_graphic(card)).to eq '🃔'
    end
    it 'should return club five' do
      card = Card.new(CardColour::CLUB, CardFigure::FIVE)
      expect(CardGraphics.get_graphic(card)).to eq '🃕'
    end
    it 'should return club six' do
      card = Card.new(CardColour::CLUB, CardFigure::SIX)
      expect(CardGraphics.get_graphic(card)).to eq '🃖'
    end
    it 'should return club seven' do
      card = Card.new(CardColour::CLUB, CardFigure::SEVEN)
      expect(CardGraphics.get_graphic(card)).to eq '🃗'
    end
    it 'should return club eight' do
      card = Card.new(CardColour::CLUB, CardFigure::EIGHT)
      expect(CardGraphics.get_graphic(card)).to eq '🃘'
    end
    it 'should return club nine' do
      card = Card.new(CardColour::CLUB, CardFigure::NINE)
      expect(CardGraphics.get_graphic(card)).to eq '🃙'
    end
    it 'should return club ten' do
      card = Card.new(CardColour::CLUB, CardFigure::TEN)
      expect(CardGraphics.get_graphic(card)).to eq '🃚'
    end
    it 'should return club jack' do
      card = Card.new(CardColour::CLUB, CardFigure::JACK)
      expect(CardGraphics.get_graphic(card)).to eq '🃛'
    end
    it 'should return club queen' do
      card = Card.new(CardColour::CLUB, CardFigure::QUEEN)
      expect(CardGraphics.get_graphic(card)).to eq '🃝'
    end
    it 'should return club king' do
      card = Card.new(CardColour::CLUB, CardFigure::KING)
      expect(CardGraphics.get_graphic(card)).to eq '🃞'
    end
    it 'should return club ace' do
      card = Card.new(CardColour::CLUB, CardFigure::ACE)
      expect(CardGraphics.get_graphic(card)).to eq '🃑'
    end
  end
  describe '#back_graphic' do
    it 'should return good symbol' do
      expect(CardGraphics.back_graphic).to eq '🂠'
    end
  end
end
