# class of menu graphics
class MenuGraphics
  private_class_method :new

  def self.get_graphic(actions)
    matrix = []
    matrix.push('Actions:')
    matrix.push('1. Get from matrix') if actions.include? Actions::GET_CARD_FROM_MATRIX
    matrix.push('3. Put') if actions.include? Actions::PUT_CARD
    matrix.push('4. End turn') if actions.include? Actions::END_TURN
    matrix
  end
end
