require "minitest/autorun"

class ChangeMachine
  def change(number)
    coins = []
    while true
      if number == 0
        return coins
        break
      elsif number < 5
        number.times do
          coins << 1
          number -= 1
        end
      elsif number >= 10 && number < 25
        coins << 10
        number -= 10
      elsif number >= 5 && number < 10
        coins << 5
        number -= 5
      elsif number >= 25
        coins << 25
        number -= 25
      end
    end
  end
end

class TestChangeMachine < Minitest::Test
  def test_one_return_one_penny
    machine = ChangeMachine.new
    assert_equal [1], machine.change(1)
  end

  def test_four_return_four_pennies
    machine = ChangeMachine.new
    assert_equal [1, 1, 1, 1], machine.change(4)
  end

  def test_15_return_one_dime_and_one_nickle
    machine = ChangeMachine.new
    assert_equal [10, 5], machine.change(15)
  end

  def test_47_return_change
    machine = ChangeMachine.new
    assert_equal [25, 10, 10, 1, 1], machine.change(47)
  end

  def test_119_return_change
    machine = ChangeMachine.new
    assert_equal [25, 25, 25, 25, 10, 5, 1, 1, 1, 1], machine.change(119)
  end
end
