require 'game_dice'
require 'test/unit'

class DiceTest < MiniTest::Unit::TestCase
  def setup
    @dice = Dice.new
  end

  def calc_total_roll(dice)
     dice.inject(0) { |total, current| total += current.last_roll }
  end

  def test_should_default_to_2d6_dice
    assert_equal @dice.count, 2
    @dice.each do |die|
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
    assert_equal @dice.roll, calc_total_roll(@dice)
  end
  
  def test_rerolling_one_die_should_change_total
    @dice.roll
    @dice[0].roll
    assert_equal @dice.total, calc_total_roll(@dice)
  end
end
