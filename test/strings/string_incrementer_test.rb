require "minitest/autorun"
require "./src/strings/string_incrementer"

# Exercise: String incrementer
# Description: Your job is to write a function which increments a string, to create a new string.
# - If the string already ends with a number, the number should be incremented by 1.
# - If the string does not end with a number. the number 1 should be appended to the new string.

# Inputs and Expected Outputs:
# Input: "foo"
# Output: "foo1"

# Input: "foobar23"
# Output: "foobar24"

# Input: "foo0042"
# Output: "foo0043"

# Input: "foo9"
# Output: "foo10"

# Input: "foo098"
# Output: "foo099"

# Attention: If the number has leading zeros the amount of digits should be considered.

class StringIncrementerTest < Minitest::Test
  def test_string_incrementer
    assert_equal "foo1", string_incrementer("foo")
    assert_equal "foobar24", string_incrementer("foobar23")
    assert_equal "foo0043", string_incrementer("foo0042")
    assert_equal "foo10", string_incrementer("foo9")
    assert_equal "foo099", string_incrementer("foo098")
  end
end



