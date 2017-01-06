# class of menu graphics
class MenuGraphics
  private_class_method :new

  def self.get_graphic(table, player)
    matrix = []
    actions = Rules.possible_actions(table, player)
    matrix.push('Actions:')
    matrix.push('1. Get from matrix') if actions.include? Actions::GET_CARD_FROM_MATRIX
    matrix.push('2. Get from stack') if actions.include? Actions::GET_CARD_FROM_STACK
    matrix.push('3. Put') if actions.include? Actions::PUT_CARD
    matrix.push('4. Resign') if actions.include? Actions::SURRENDER
  end
end
