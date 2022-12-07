# frozen_string_literal: true

require 'simplecov'

SimpleCov.start

require_relative 'jokenpo'

# Jokenpo Test
RSpec.describe Jokenpo do
  describe '#match' do
    it 'returns a winner between rock and scissors' do
      rock = Rock.new('Rock')
      scissors = Scissors.new('Scissors')

      jokenpo_match = Jokenpo.new(rock, scissors).match

      expect(jokenpo_match).to eq 'Rock wins'
    end
  end
end
