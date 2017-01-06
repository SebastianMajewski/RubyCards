# class of the Ai
class Ai
  attr_reader :me

  def initialize
    @me = Player.new
  end

  def make_turn(table)
    result = first_card(table)
    return second_card(table) if result == Actions::PUT_CARD
    result
  end

  def take_random(table)
    not_nil_cards = []
    table.card_matrix.each do |array|
      array.each do |card|
        not_nil_cards.push(card) unless card.nil?
      end
    end
    selected = not_nil_cards[rand(not_nil_cards.length)]
    i = -1
    j = -1
    (0..(table.card_matrix.length - 1)).each do |row|
      (0..(table.card_matrix[row].length - 1)).each do |col|
        if selected == table.card_matrix[row][col]
          i = row
          j = col
          break
        end
      end
      break if i != -1 && j != -1
    end
    table.get_card_from_matrix(i, j)
  end

  def suitable_card(table)
    @me.cards.each do |card|
      return @me.remove_card(@me.cards.index(card)) if
        Rules.can_put_card_to_stack(table, card)
    end
    nil
  end

  def second_card(table)
    if table.matrix_has_cards
      table.push_card_to_stack(take_random(table))
      Actions::PUT_CARD
    elsif @me.cards?
      table.push_card_to_stack(@me.remove_card(rand(@me.cards.count)))
      Actions::PUT_CARD
    else
      Actions::END_TURN
    end
  end

  def first_card(table)
    if Rules.can_get_any_card_from_matrix(table)
      card = take_random(table)
      if Rules.can_put_card_to_stack(table, card)
        table.push_card_to_stack(card)
        return Actions::PUT_CARD
      else
        @me.add_card(card)
        return first_card(table)
      end
    elsif @me.cards?
      card = suitable_card(table)
      return Actions::SURRENDER if card.nil?
      table.push_card_to_stack(card)
      Actions::PUT_CARD
    else
      Actions::END_TURN
    end
  end
end
