require_relative 'card'
require_relative 'deck'
require_relative 'player'
require_relative 'ai'
require_relative 'rules'
require_relative 'io'
require_relative 'actions'
require_relative 'card_graphics'
require_relative 'card_colour'
require_relative 'card_figure'
require_relative 'menu_graphics'
require_relative 'player_graphics'
require_relative 'table'
require_relative 'table_graphics'

player = Player.new
ai = Ai.new

deck = Deck.new
deck.shuffle
table = Table.new(deck)

loop do
  IO.redraw(table, player)
  option = IO.get_menu_option(Rules.possible_actions(table, player))
  IO.redraw(table, player)
  if option == Actions::GET_CARD_FROM_MATRIX
    position = IO.get_card_from_matrix_numbers(table)
    player.add_card(table.get_card_from_matrix(position[0], position[1]))
    IO.redraw(table, player)
  elsif option == Actions::GET_CARD_FROM_STACK
  elsif option == Actions::PUT_CARD
  elsif option == Actions::SURRENDER
  end
end
