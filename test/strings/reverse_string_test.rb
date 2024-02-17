require "minitest/autorun"
require "./src/strings/reverse_string"

# Exercise: Reversing a String
# Description: Write a Ruby method that takes a string as an input and returns the reversed version of the string.

# Inputs:

# "Hello, World!"
# "Ruby Programming"
# "12345"
# Expected Outputs:

# "!dlroW ,olleH"
# "gnimmargorP ybuR"
# "54321"

class StringReversalTest < Minitest::Test
  def test_reverse_string
    assert_equal "!dlroW ,olleH", reverse_string("Hello, World!")
    assert_equal "gnimmargorP ybuR", reverse_string("Ruby Programming")
    assert_equal "54321", reverse_string("12345")
  end
end