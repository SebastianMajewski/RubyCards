# class of table graphics builder
class TableGraphics
  private_class_method :new
  def self::get_graphic(table)
    matrix = []
    matrix.push('------------------------------')
    matrix.push('|                            |')
    matrix.push('|   A B C D E F G            |')

    (1..3).each do |i|
      temp = '| ' + i.to_s
      table.card_matrix[i - 1].each do |card|
      temp += if card.nil?
                '  '
              else
                ' ' + CardGraphics.back_graphic
              end
      end
      temp += '            |'
      matrix.push(temp)
    end

    temp = '| 4'
    table.card_matrix[3].each do |card|
      temp += if card.nil?
                '  '
              else
                ' ' + CardGraphics.back_graphic
              end
    end
    temp += '     [' + CardGraphics.get_graphic(table.card_stack.last) + ']    |'
    matrix.push(temp)

    (5..8).each do |i|
      temp = '| ' + i.to_s
      table.card_matrix[i - 1].each do |card|
        temp += if card.nil?
                  '  '
                else
                  ' ' + CardGraphics.back_graphic
                end
      end
      temp += '            |'
      matrix.push(temp)
    end

    matrix.push('|                            |')
    matrix.push('------------------------------')
    matrix
  end
end
