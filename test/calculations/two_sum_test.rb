require "minitest/autorun"
require "./src/calculations/two_sum"

# Exercise: Two Sum
# Description: Given an array of integers nums and an integer target, return
# indices of the two numbers such that they add up to target.
# You may assume that each input would have exactly one solution, and you may
# not use the same element twice.
#
# Example:
# two_sum([2,7,11,15], 9) => [0,1]
# two_sum([3,2,4], 6) => [1,2]
# two_sum([3,3], 6) => [0,1]
#
# Your task is to define the function `two_sum` to pass all the test cases.

class TwoSumTest < Minitest::Test
  def test_basic_case
    assert_equal [0, 1], two_sum([2, 7, 11, 15], 9)
  end

  def test_non_adjacent_indices
    assert_equal [1, 2], two_sum([3, 2, 4], 6)
  end

  def test_duplicate_values
    assert_equal [0, 1], two_sum([3, 3], 6)
  end

  def test_negative_numbers
    assert_equal [1, 3], two_sum([-1, -2, -3, -4], -6)
  end

  def test_mixed_positive_negative
    assert_equal [0, 2], two_sum([-3, 4, 3, 90], 0)
  end

  def test_zeros
    assert_equal [0, 3], two_sum([0, 4, 3, 0], 0)
  end
end