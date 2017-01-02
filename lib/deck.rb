# class of the deck
class Deck
  attr_accessor :cards

  def initialize()
    @cards = []
    @cards.push(Card.new(CardColour::SPADES, CardFigure::TWO))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::THREE))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::FOUR))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::FIVE))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::SIX))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::SEVEN))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::EIGHT))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::NINE))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::TEN))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::JACK))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::QUEEN))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::KING))
    @cards.push(Card.new(CardColour::SPADES, CardFigure::ACE))

    @cards.push(Card.new(CardColour::HEART, CardFigure::TWO))
    @cards.push(Card.new(CardColour::HEART, CardFigure::THREE))
    @cards.push(Card.new(CardColour::HEART, CardFigure::FOUR))
    @cards.push(Card.new(CardColour::HEART, CardFigure::FIVE))
    @cards.push(Card.new(CardColour::HEART, CardFigure::SIX))
    @cards.push(Card.new(CardColour::HEART, CardFigure::SEVEN))
    @cards.push(Card.new(CardColour::HEART, CardFigure::EIGHT))
    @cards.push(Card.new(CardColour::HEART, CardFigure::NINE))
    @cards.push(Card.new(CardColour::HEART, CardFigure::TEN))
    @cards.push(Card.new(CardColour::HEART, CardFigure::JACK))
    @cards.push(Card.new(CardColour::HEART, CardFigure::QUEEN))
    @cards.push(Card.new(CardColour::HEART, CardFigure::KING))
    @cards.push(Card.new(CardColour::HEART, CardFigure::ACE))

    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::TWO))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::THREE))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::FOUR))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::FIVE))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::SIX))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::SEVEN))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::EIGHT))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::NINE))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::TEN))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::JACK))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::QUEEN))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::KING))
    @cards.push(Card.new(CardColour::DIAMOND, CardFigure::ACE))

    @cards.push(Card.new(CardColour::CLUB, CardFigure::TWO))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::THREE))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::FOUR))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::FIVE))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::SIX))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::SEVEN))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::EIGHT))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::NINE))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::TEN))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::JACK))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::QUEEN))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::KING))
    @cards.push(Card.new(CardColour::CLUB, CardFigure::ACE))
  end

  def shuffle
    @cards.shuffle
  end
end
