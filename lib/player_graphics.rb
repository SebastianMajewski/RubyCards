# class of player graphic
class PlayerGraphics
  private_class_method :new

  def self.get_graphic(player)
    cards_array = player.cards.each_slice(20).to_a
    matrix = []
    number = 1
    cards_array.each do |array|
      numbers = ''
      cards = ''
      array.each do |card|
        numbers += ' ' if number.to_s.length == 1
        numbers += number.to_s + ' '
        cards += CardGraphics.get_graphic(card)
        cards += '  '
        number += 1
      end
      matrix.push(numbers)
      matrix.push(cards)
      matrix.push('')
    end
    matrix
  end
end
