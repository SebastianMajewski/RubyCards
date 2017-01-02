# class of the table
class Table
  attr_reader :card_stack, :card_matrix

  def initialize(deck)
    @card_matrix = deck.cards.each_slice(7).to_a
    @card_stack = []
    @card_stack.push(deck.cards.shift)
  end
end
