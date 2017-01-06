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
ai_turn = false
second_card = false
winner = 0

loop do
  if ai_turn
    ai.make_turn(table)
    if !table.matrix_has_cards && !ai.me.cards?
      winner = 1
      break
    end
    ai_turn = false
  end
  actions = []
  actions = [Actions::GET_CARD_FROM_MATRIX] if table.matrix_has_cards
  actions = [Actions::END_TURN, Actions::PUT_CARD] unless table.matrix_has_cards
  IO.redraw(ai, table, player, actions)
  option = IO.get_menu_option(actions)
  IO.redraw(ai, table, player, actions)
  if option == Actions::GET_CARD_FROM_MATRIX
    position = IO.get_card_from_matrix_numbers(table)
    card = table.get_card_from_matrix(position[0], position[1])
    if Rules.can_put_card_to_stack(table, card)
      table.push_card_to_stack(card)
      IO.redraw(ai, table, player, actions)
      IO.suitable
      if !table.matrix_has_cards && !player.cards?
        winner = 2
        break
      end
      if table.matrix_has_cards
        IO.select_next
        position = IO.get_card_from_matrix_numbers(table)
        card = table.get_card_from_matrix(position[0], position[1])
        table.push_card_to_stack(card)
        if !table.matrix_has_cards && !player.cards?
          winner = 2
          break
        end
        ai_turn = true
      else
        second_card = true
      end
    else
      player.add_card(card)
    end
    next
  elsif option == Actions::PUT_CARD
    position = IO.get_card_from_player(player.cards.count, table, player, false)
    if Rules.can_put_card_to_stack(table, player.cards[position])
      unless second_card
        card = player.remove_card(position)
        table.push_card_to_stack(card)
        IO.redraw(ai, table, player, actions)
        IO.suitable
      end
      if !table.matrix_has_cards && !player.cards?
        winner = 2
        break
      end
      IO.select_next
      position = IO.get_card_from_player(player.cards.count, table, player, true)
      card = player.remove_card(position)
      table.push_card_to_stack(card)
      if !table.matrix_has_cards && !player.cards?
        winner = 2
        break
      end
      ai_turn = true
      second_card = false if second_card
    end
  elsif option == Actions::END_TURN
    ai_turn = true
    next
  end
end

puts 'You win' if winner == 2
puts 'You lose' if winner == 1
