require 'io/console'
require_relative 'table_graphics'
require_relative 'player_graphics'
require_relative 'menu_graphics'
require_relative 'card_graphics'

# class of the io
class IO
  private_class_method :new

  def self.clear
    Gem.win_platform? ? (system 'cls') : (system 'clear')
  end

  def self.get_card_from_matrix_numbers(table)
    loop do
      puts 'Letter:'
      letter = gets
      letter_number = -1
      next unless ('A'..'G').to_a.include? letter[0]
      case letter[0]
      when 'A'
        letter_number = 0
      when 'B'
        letter_number = 1
      when 'C'
        letter_number = 2
      when 'D'
        letter_number = 3
      when 'E'
        letter_number = 4
      when 'F'
        letter_number = 5
      when 'G'
        letter_number = 6
      end
      puts 'Number:'
      number = gets
      next unless (1..8).to_a.include? number.to_i
      next if table.card_matrix[number.to_i - 1][letter_number].nil?
      return [number.to_i - 1, letter_number]
    end
  end

  def self.redraw(ai, table, player, actions)
    clear
    print_game_view(ai, table, player, actions)
  end

  def self.suitable
    puts 'Card was correct.'
  end

  def self.select_next
    puts 'Select second card.'
  end

  def self.print_game_view(ai, table, player, actions)
    ai = PlayerGraphics.get_ai_graphics(ai.me)
    menu = MenuGraphics.get_graphic(actions)
    table = TableGraphics.get_graphic(table)
    player = PlayerGraphics.get_graphic(player)
    (0..menu.count).each do |i|
      table[i] += ' ' + menu[i].to_s
    end
    puts ai
    puts table
    puts player
  end

  def self.get_card_from_player(count, table, player, any)
    loop do
      puts 'Number:'
      number = gets
      next unless (1..count).to_a.include? number.to_i
      unless any
        next unless Rules.can_put_card_to_stack(table, player.cards[number.to_i - 1])
      end
      return number.to_i - 1
    end
  end

  def self.get_menu_option(available_array)
    loop do
      puts 'Action number:'
      number = gets
      next unless available_array.include? number.to_i
      return number.to_i
    end
  end
end
