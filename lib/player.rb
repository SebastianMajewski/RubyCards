# class of the player
class Player
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def add_card(card)
    @cards.push(card)
  end

  def remove_card(index)
    card = @cards[index]
    @cards.delete_at(index)
    card
  end
end
