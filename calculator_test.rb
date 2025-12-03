require "minitest/autorun"
require_relative "calculator"   

class CalculatorTest < Minitest::Test
  def test_add
    assert_equal 5, add(2, 3)
    assert_equal(-1, add(-2, 1))
  end

  def test_subtract
    assert_equal 1, subtract(3, 2)
    assert_equal(-3, subtract(-2, 1))
  end

  def test_multiply
    assert_equal 6, multiply(2, 3)
    assert_equal(-2, multiply(-2, 1))
  end

  def test_divide
    assert_equal 2, divide(6, 3)
    assert_in_delta 2.5, divide(5, 2), 0.001
  end

   def test_square
    assert_equal 9, square(3)
    assert_equal 4, square(-2)
    assert_equal 0, square(0)
  end

  def test_square_root
    assert_equal 3, square_root(9)
    assert_in_delta 1.414, square_root(2), 0.001
  end

  def test_cube
    assert_equal 27, cube(3)
    assert_equal(-8, cube(-2))
  end

  def test_cube_root
    assert_equal 3, cube_root(27)
    assert_in_delta 1.26, cube_root(2), 0.01
    assert_equal(-3, cube_root(-27))
  end
end