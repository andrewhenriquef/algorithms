require 'minitest/autorun'
require "./src/calculations/next_bigger_number"

# Description: Next Bigger Number with the Same Digits
# Create a function that takes a positive integer and returns the next bigger number
# that can be formed by rearranging its digits. For example:
#
# next_bigger(12)  => 21
# next_bigger(513) => 531
# next_bigger(2017) => 2071
#
# If the digits can't be rearranged to form a bigger number, the function should return -1:
#
# next_bigger(9)   => -1
# next_bigger(111) => -1
# next_bigger(531) => -1
#
# Your task is to define the function `next_bigger` to pass all the test cases.

# Test cases using Minitest
class TestNextBigger < Minitest::Test
  def test_next_bigger
    assert_equal 21, next_bigger(12)
    assert_equal 531, next_bigger(513)
    assert_equal 2071, next_bigger(2017)
    assert_equal -1, next_bigger(9)
    assert_equal -1, next_bigger(111)
    assert_equal -1, next_bigger(531)
    assert_equal 441, next_bigger(414)
    assert_equal 414, next_bigger(144)
  end
end
