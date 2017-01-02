# class of card graphics
class CardGraphics
  private_class_method :new
  def self.get_graphic(card)
    case card.colour
    when CardColour::SPADES
      case card.figure
      when CardFigure::TWO
        'u\1F0A2'
      when CardFigure::THREE
        'u\1F0A3'
      when CardFigure::FOUR
        'u\1F0A4'
      when CardFigure::FIVE
        'u\1F0A5'
      when CardFigure::SIX
        'u\1F0A6'
      when CardFigure::SEVEN
        'u\1F0A7'
      when CardFigure::EIGHT
        'u\1F0A8'
      when CardFigure::NINE
        'u\1F0A9'
      when CardFigure::TEN
        'u\1F0AA'
      when CardFigure::JACK
        'u\1F0AB'
      when CardFigure::QUEEN
        'u\1F0AD'
      when CardFigure::KING
        'u\1F0AE'
      when CardFigure::ACE
        'u\1F0A1'
      end
    when CardColour::HEART
      case card.figure
      when CardFigure::TWO
        'u\1F0B2'
      when CardFigure::THREE
        'u\1F0B3'
      when CardFigure::FOUR
        'u\1F0B4'
      when CardFigure::FIVE
        'u\1F0B5'
      when CardFigure::SIX
        'u\1F0B6'
      when CardFigure::SEVEN
        'u\1F0B7'
      when CardFigure::EIGHT
        'u\1F0B8'
      when CardFigure::NINE
        'u\1F0B9'
      when CardFigure::TEN
        'u\1F0BA'
      when CardFigure::JACK
        'u\1F0BB'
      when CardFigure::QUEEN
        'u\1F0BD'
      when CardFigure::KING
        'u\1F0BE'
      when CardFigure::ACE
        'u\1F0B1'
      end
    when CardColour::DIAMOND
      case card.figure
      when CardFigure::TWO
        'u\1F0C2'
      when CardFigure::THREE
        'u\1F0C3'
      when CardFigure::FOUR
        'u\1F0C4'
      when CardFigure::FIVE
        'u\1F0C5'
      when CardFigure::SIX
        'u\1F0C6'
      when CardFigure::SEVEN
        'u\1F0C7'
      when CardFigure::EIGHT
        'u\1F0C8'
      when CardFigure::NINE
        'u\1F0C9'
      when CardFigure::TEN
        'u\1F0CA'
      when CardFigure::JACK
        'u\1F0CB'
      when CardFigure::QUEEN
        'u\1F0CD'
      when CardFigure::KING
        'u\1F0CE'
      when CardFigure::ACE
        'u\1F0C1'
      end
    when CardColour::CLUB
      case card.figure
      when CardFigure::TWO
        'u\1F0D2'
      when CardFigure::THREE
        'u\1F0D3'
      when CardFigure::FOUR
        'u\1F0D4'
      when CardFigure::FIVE
        'u\1F0D5'
      when CardFigure::SIX
        'u\1F0D6'
      when CardFigure::SEVEN
        'u\1F0D7'
      when CardFigure::EIGHT
        'u\1F0D8'
      when CardFigure::NINE
        'u\1F0D9'
      when CardFigure::TEN
        'u\1F0DA'
      when CardFigure::JACK
        'u\1F0DB'
      when CardFigure::QUEEN
        'u\1F0DD'
      when CardFigure::KING
        'u\1F0DE'
      when CardFigure::ACE
        'u\1F0D1'
      end
    end
  end

  def self.back_graphic
    'u\1F0A0'
  end
end
