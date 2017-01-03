# class of the table
class Table
  attr_reader :card_stack, :card_matrix

  def initialize(deck)
    @card_stack = []
    @card_stack.push(deck.cards.shift)
    @card_matrix = deck.cards.each_slice(7).to_a
    @cards_in_matrix = 51
  end

  def get_card_from_matrix(row, column)
    card = @card_matrix[row][column]
    @card_matrix[row][column] = nil
    @cards_in_matrix -= 1
    card
  end

  def pop_card_from_stack
    @card_stack.pop
  end

  def push_card_to_stack(card)
    @card_stack.push(card)
  end

  def matrix_has_cards
    !@cards_in_matrix.zero?
  end
end
