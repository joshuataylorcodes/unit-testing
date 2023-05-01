require "minitest/autorun"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(square)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end

  def square_root(number)
    calc = Math.sqrt(number)
    return calc
  end
end

class TestCalculator < Minitest::Test
  def test_add
    calculator = Calculator.new
    assert_equal 4, calculator.add(1, 3)
  end

  def test_add_with_negative_numbers
    calculator = Calculator.new
    assert_equal -2, calculator.add(1, -3)
  end

  def test_subtract
    calculator = Calculator.new
    assert_equal 5, calculator.subtract(10, 5)
  end

  def test_multiply
    calculator = Calculator.new
    assert_equal 1000, calculator.multiply(100, 10)
  end

  def test_divide
    calculator = Calculator.new
    assert_equal 12, calculator.divide(144, 12)
  end

  def test_square
    calculator = Calculator.new
    assert_equal 49, calculator.square(7)
  end

  def test_power
    calculator = Calculator.new
    assert_equal 216, calculator.power(6, 3)
  end

  def test_square_root
    calculator = Calculator.new
    assert_equal 2, calculator.square_root(4)
  end
end
