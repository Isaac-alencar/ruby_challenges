# frozen_string_literal: true

# Moves
class Moves
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def defeats?; end

  def draw?(opponent)
    true if opponent.is_a? self.class
  end
end

# Jokenpo
class Jokenpo
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def match
    return 'Game tied' if @player_one.draw?(@player_two)
    return "#{@player_one.value} wins" if @player_one.defeats?(@player_two)

    "#{@player_two.value} wins"
  end
end

# Rock
class Rock < Moves
  def defeats?(opponent)
    opponent.is_a? Scissors
  end
end

# Scissors
class Scissors < Moves
  def defeats?(move)
    false unless move.is_a?(Paper)
  end
end

# Scissors
class Paper < Moves
  def defeats?(move)
    false unless move.is_a? Rock
  end
end

# player_one = Rock.new('Rock')
# player_two = Scissors.new('Scissors')
 
# player_three = Paper.new('Paper')
# player_four = Rock.new('Rock')

# player_five = Paper.new('Paper')
# player_six = Scissors.new('Scissors')

# p Jokenpo.new(player_one, player_two).match
# p Jokenpo.new(player_three, player_four).match
# p Jokenpo.new(player_five, player_six).match

# p Jokenpo.new(player_one, player_four).match
