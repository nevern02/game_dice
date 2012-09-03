# Represents an individual die object with the specified number of sides.
# Defaults to a 6-sided die.
class Die
  # The number of sides on the die.
  attr_reader :sides
  # The result of the last roll.
  attr_reader :last_roll
  
  # Create a new die object with the specified number of sides.  Defaults to 6.
  def initialize(sides=6)
    @sides = sides
    @last_roll = 0
  end
  
  # Rolls the die and stores the result in the _last_roll_ attribute.
  def roll
    @last_roll = Array.new(@sides) { |i| i + 1 }.shuffle.first
  end
  
  def to_s
    "A single die with #{@sides} sides.  Currenly showing: #{@last_roll}."
  end
end