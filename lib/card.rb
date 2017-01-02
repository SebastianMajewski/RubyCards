# Class of Card
class Card
  attr_accessor :colour, :figure

  def initialize(colour, figure)
    @colour = colour
    @figure = figure
  end

  def equals(card)
    if card.is_a?(Card) && card.colour == @colour && card.figure == @figure
      true
    else
      false
    end
  end
end
