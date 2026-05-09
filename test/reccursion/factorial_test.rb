require "minitest/autorun"
require "./src/reccursion/factorial"

# Exercise: Factorial
# Description: Your task is to write a Ruby method that takes a number n and returns the factorial of n.
# The factorial of a non-negative integer n is the product of all positive integers less than or equal to n.
# Written mathematically: n! = n * (n-1) * (n-2) * ... * 1
# with the base case: 0! = 1, 1! = 1
#
# Time Complexity: O(n) — each call reduces n by 1, making exactly n recursive calls.
# Space Complexity: O(n) — n frames held in the call stack simultaneously.

# Inputs and Expected Outputs:
# Input: 1
# Output: 1

# Input: 2
# Output: 2

# Input: 5
# Output: 120

# Input: 10
# Output: 3628800

class FactorialTest < Minitest::Test
  def test_factorial_of_1_returns_1
    assert_equal 1, factorial(1)
  end

  def test_factorial_of_2_returns_2
    assert_equal 2, factorial(2)
  end

  def test_factorial_of_3_returns_6
    assert_equal 6, factorial(3)
  end

  def test_factorial_of_5_returns_120
    assert_equal 120, factorial(5)
  end

  def test_factorial_of_10_returns_3628800
    assert_equal 3628800, factorial(10)
  end
end
