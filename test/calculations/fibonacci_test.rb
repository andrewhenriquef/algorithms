require "minitest/autorun"
require "./src/calculations/fibonacci"

# Exercise: Fibonacci
# Description: Your task is to write a Ruby method that takes a number n and returns the nth number in the Fibonacci sequence.
# The Fibonacci sequence is a series of numbers in which each number is the sum of the two preceding ones, usually starting with 0 and 1.
# The sequence goes: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, and so forth.
# Written mathematically, the sequence is defined by the recurrence relation:
# F(n) = F(n-1) + F(n-2)
# with initial conditions:
# F(0) = 0, F(1) = 1
# This means that each number in the sequence is found by adding up the two numbers before it.

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
  def test_fibonacci
    assert_equal 0, fibonacci(0)
    assert_equal 1, fibonacci(1)
    assert_equal 1, fibonacci(2)
    assert_equal 8, fibonacci(6)
    assert_equal 55, fibonacci(10)
  end
end
