# class of the rules
class Rules
  private_class_method :new

  def self.can_get_any_card_from_matrix(table)
    table.matrix_has_cards
  end

  def self.can_get_card_from_stack(table)
    table.card_stack.count > 1
  end

  def self.can_put_card_to_stack(table, card)
    table.card_stack.last.colour == card.colour ||
      table.card_stack.last.figure == card.figure
  end

  def self.can_get_card_from_matrix(table, i, j)
    !table.card_matrix[i][j].nil?
  end

  def self.possible_actions(table, player)
    actions = []
    actions.push(Actions::GET_CARD_FROM_MATRIX) if Rules.can_get_any_card_from_matrix(table)
    actions.push(Actions::GET_CARD_FROM_STACK) if Rules.can_get_card_from_stack(table)
    actions.push(Actions::PUT_CARD) if player.cards? && table.matrix_has_cards
    actions.push(Actions::SURRENDER)
    actions
  end
end
