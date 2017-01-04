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
        numbers += number.to_s + ' '
        spaces = (number / 10) / 2
        spaces.times do
          cards += ' '
        end
        cards += CardGraphics.get_graphic(card)
        spaces.times do
          cards += ' '
        end
        number += 1
      end
      matrix.push(numbers)
      matrix.push(cards)
    end
    matrix
  end
end
