# class of card graphics
class CardGraphics
  private_class_method :new
  def self.get_graphic(card)
    case card.colour
    when CardColour::SPADES
      case card.figure
      when CardFigure::TWO
        '🂢'
      when CardFigure::THREE
        '🂣'
      when CardFigure::FOUR
        '🂤'
      when CardFigure::FIVE
        '🂥'
      when CardFigure::SIX
        '🂦'
      when CardFigure::SEVEN
        '🂧'
      when CardFigure::EIGHT
        '🂨'
      when CardFigure::NINE
        '🂩'
      when CardFigure::TEN
        '🂪'
      when CardFigure::JACK
        '🂫'
      when CardFigure::QUEEN
        '🂭'
      when CardFigure::KING
        '🂮'
      when CardFigure::ACE
        '🂡'
      end
    when CardColour::HEART
      case card.figure
      when CardFigure::TWO
        '🂲'
      when CardFigure::THREE
        '🂳'
      when CardFigure::FOUR
        '🂴'
      when CardFigure::FIVE
        '🂵'
      when CardFigure::SIX
        '🂶'
      when CardFigure::SEVEN
        '🂷'
      when CardFigure::EIGHT
        '🂸'
      when CardFigure::NINE
        '🂹'
      when CardFigure::TEN
        '🂺'
      when CardFigure::JACK
        '🂻'
      when CardFigure::QUEEN
        '🂽'
      when CardFigure::KING
        '🂾'
      when CardFigure::ACE
        '🂱'
      end
    when CardColour::DIAMOND
      case card.figure
      when CardFigure::TWO
        '🃂'
      when CardFigure::THREE
        '🃃'
      when CardFigure::FOUR
        '🃄'
      when CardFigure::FIVE
        '🃅'
      when CardFigure::SIX
        '🃆'
      when CardFigure::SEVEN
        '🃇'
      when CardFigure::EIGHT
        '🃈'
      when CardFigure::NINE
        '🃉'
      when CardFigure::TEN
        '🃊'
      when CardFigure::JACK
        '🃋'
      when CardFigure::QUEEN
        '🃍'
      when CardFigure::KING
        '🃎'
      when CardFigure::ACE
        '🃁'
      end
    when CardColour::CLUB
      case card.figure
      when CardFigure::TWO
        '🃒'
      when CardFigure::THREE
        '🃓'
      when CardFigure::FOUR
        '🃔'
      when CardFigure::FIVE
        '🃕'
      when CardFigure::SIX
        '🃖'
      when CardFigure::SEVEN
        '🃗'
      when CardFigure::EIGHT
        '🃘'
      when CardFigure::NINE
        '🃙'
      when CardFigure::TEN
        '🃚'
      when CardFigure::JACK
        '🃛'
      when CardFigure::QUEEN
        '🃝'
      when CardFigure::KING
        '🃞'
      when CardFigure::ACE
        '🃑'
      end
    end
  end

  def self.back_graphic
    '🂠'
  end
end
