# class of the player
class Player
  attr_reader :cards

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

  def cards?
    cards.count != 0
  end
end
