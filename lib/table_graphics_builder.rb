# class of table graphics builder
class TableGraphicsBuilder
  def self::get_graphics_matrix(table)
    matrix = []
    matrix.push('------------------------------')
    matrix.push('|                            |')
    matrix.push('|   A B C D E F G            |')

    temp = '| 1'
    table[0].each do |card|
      temp += ' ' + CardGraphics.get_graphic(card)
    end
    temp += '            |'
    matrix.push(temp)
    temp = '| 2'
    table[1].each do |card|
      temp += ' ' + CardGraphics.get_graphic(card)
    end
    temp += '            |'
    matrix.push(temp)
    temp = '| 3'
    table[2].each do |card|
      temp += ' ' + CardGraphics.get_graphic(card)
    end
    temp += '            |'
    matrix.push(temp)

    matrix.push('| 2                          |')
    matrix.push('| 3                          |')
    matrix.push('| 4                   [ ]    |')
    matrix.push('| 5                          |')
    matrix.push('| 6                          |')
    matrix.push('| 7                          |')
    matrix.push('| 8                          |')
    matrix.push('|                            |')
    matrix.push('------------------------------')
  end
end
