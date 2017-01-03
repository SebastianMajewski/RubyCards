require 'simplecov'
SimpleCov.start

require 'deck'
require 'table'
require 'card'
require 'cardcolour'
require 'cardfigure'
require 'table_graphics'

RSpec.describe 'table_graphics.rb' do
  describe '#constructor' do
    it 'should not be defined' do
      expect { TableGraphics.new }.to raise_error NoMethodError
    end
  end
  describe '#get_graphic' do
    it 'should return array' do
      deck = Deck.new
      table = Table.new(deck)
      expect(TableGraphics.get_graphic(table).class).to eq Array
    end
    it 'should not raise error when matrix has nils' do
      deck = Deck.new
      table = Table.new(deck)
      table.card_matrix[1][6] = nil
      table.card_matrix[3][1] = nil
      table.card_matrix[6][3] = nil
      expect { TableGraphics.get_graphic(table) }.not_to raise_error
    end
  end
end
