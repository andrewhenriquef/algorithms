require "minitest/autorun"
require "./src/reccursion/fibonacci"

# Exercise: Fibonacci (Recursive)
# Description: Your task is to write a Ruby method that takes a number n and returns the nth number in the Fibonacci sequence.
# The Fibonacci sequence is a series of numbers in which each number is the sum of the two preceding ones, usually starting with 0 and 1.
# The sequence goes: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, and so forth.
# Written mathematically, the sequence is defined by the recurrence relation:
# F(n) = F(n-1) + F(n-2)
# with initial conditions:
# F(0) = 0, F(1) = 1

# Inputs and Expected Outputs:
# Input: 0
# Output: 0

# Input: 1
# Output: 1

# Input: 2
# Output: 1

# Input: 6
# Output: 8

# Input: 10
# Output: 55

class FibonacciTest < Minitest::Test
  def test_fibonacci_of_0_returns_0
    assert_equal 0, fibonacci(0)
  end

  def test_fibonacci_of_1_returns_1
    assert_equal 1, fibonacci(1)
  end

  def test_fibonacci_of_2_returns_1
    assert_equal 1, fibonacci(2)
  end

  def test_fibonacci_if_3_returns_2
    assert_equal 2, fibonacci(3)
  end

  def test_fibonacci_of_6_returns_8
    assert_equal 8, fibonacci(6)
  end

  def test_fibonacci_of_8_returns_21
    assert_equal 21, fibonacci(8)
  end


  def test_fibonacci_of_10_returns_55
    assert_equal 55, fibonacci(10)
  end
end
