require 'game_dice'
require 'test/unit'

class DiceTest < MiniTest::Unit::TestCase
  def test_should_default_to_2d6_dice
    d = Dice.new
    assert_equal d.count, 2
    d.each do |die|
      assert_equal die.sides, 6 
    end
  end
  
  def test_should_create_specified_dice_and_sides
    d = Dice.new(3, 10)
    assert_equal d.count, 3
    d.each do |die|
      assert_equal die.sides, 10
    end
  end
  
  def test_roll_should_return_sum_of_die_rolls
    d = Dice.new
    assert_equal d.roll, d.inject(:+)
  end
  
  def test_rerolling_one_die_should_change_total
    d = Dice.new
    d.roll
    d[0].roll
    assert_equal d.last_roll, d.inject(:+)
  end
end
