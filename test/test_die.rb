require 'game_dice'
require 'test/unit'

class DieTest < MiniTest::Unit::TestCase
  def test_should_init_with_specified_sides_but_default_to_6
    d = Die.new(5)
    d1 = Die.new()
    assert_equal(5, d.sides)
    assert_equal(6, d1.sides)
  end
  
  def test_roll_results_should_be_within_acceptable_range
    d = Die.new(6)
    10.times do
      assert(d.roll > 0)
      assert(d.roll <= d.sides)
    end
  end
end
