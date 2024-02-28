require 'minitest/autorun'
require "./src/calculations/next_smaller_number"

# Description: Next Smaller Number with the Same Digits
# Create a function that takes a positive integer and returns the next smaller number
# that can be formed by rearranging its digits. For example:
#
# next_smaller(21)  => 12
# next_smaller(531) => 513
# next_smaller(2071) => 2017
#
# If the digits can't be rearranged to form a smaller number, the function should return -1:
#
# next_smaller(1)   => -1
# next_smaller(111) => -1
# next_smaller(123) => -1
#
# Your task is to define the function `next_smaller` to pass all the test cases.

# Test cases using Minitest
class TestNextSmaller < Minitest::Test
  def test_next_smaller
    assert_equal 12, next_smaller(21)
    assert_equal 513, next_smaller(531)
    assert_equal 2017, next_smaller(2071)
    assert_equal -1, next_smaller(1)
    assert_equal -1, next_smaller(111)
    assert_equal -1, next_smaller(123)
    assert_equal 414, next_smaller(441)
    assert_equal 144, next_smaller(414)
  end
end