# class of the table
class Table
  attr_reader :card_stack, :card_matrix

  def initialize(deck)
    @card_matrix = deck.cards.each_slice(7).to_a
    @card_stack = []
    @card_stack.push(deck.cards.shift)
  end

  def get_card_from_matrix(row, column)
    card = @card_matrix[row][column]
    @card_matrix[row][column] = nil
    card
  end

  def pop_card_from_stack
    @card_stack.pop
  end

  def push_card_to_stack(card)
    @card_stack.push(card)
  end
end
