# class of menu graphics
class MenuGraphics
  private_class_method :new

  def self.get_graphic(table, player)
    matrix = []
    matrix.push('1. Get from matrix') if Rules.can_get_any_card_from_matrix(table)
    matrix.push('2. Get from stack') if Rules.can_get_card_from_stack(table)
    matrix.push('3. Put') if player.cards?
    matrix.push('4. Resign')
  end
end
