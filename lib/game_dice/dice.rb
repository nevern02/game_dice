# A Dice object represents a collection of individual Die objects.
# Defaults to two dice.
class Dice < Array
  # Dice collectiond defaults to 2d6
  def initialize(amount=2, sides=6)
    amount.times { self << Die.new(sides) }
  end

  # Roll all the dice
  def roll
    self.inject(0) { |total, current| total += current.roll }
  end

  # Check the current roll for all dice
  def total
    self.inject(0) { |total, current| total += current.last_roll }
  end

  def to_s
    "A collection of dice #{self.collect { |i| i.last_roll }}, total: #{total}."
  end
end
