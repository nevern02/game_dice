require 'game_dice'
require 'test/unit'

class DieTest < MiniTest::Unit::TestCase
  def test_should_init_with_specified_number_of_sides
    d = Die.new(6)
    assert_equal(6, d.sides)
  end
  
  def test_rolls_should_return_an_int_within_range
    d = Die.new(6)
    assert(d.roll > 0)
    assert(d.roll <= d.sides)
  end
end
