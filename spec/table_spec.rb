require 'simplecov'
SimpleCov.start

require 'card'
require 'deck'
require 'table'
require 'cardcolour'
require 'cardfigure'

RSpec.describe 'table.rb' do
  describe '#constructor' do
    it 'should be defined' do
      expect { Table.new(Deck.new) }.not_to raise_error
    end
    it 'should add one card to stack' do
      table = Table.new(Deck.new)
      expect(table.card_stack.count).to eq 1
    end
    it 'should be 8 rows in card_matrix' do
      table = Table.new(Deck.new)
      expect(table.card_matrix.length).to eq 8
    end
    it 'should be 7 columns in card_matrix' do
      table = Table.new(Deck.new)
      expect(table.card_matrix[0].length).to eq 7
    end
  end
end
