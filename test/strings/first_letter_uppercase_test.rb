require 'minitest/autorun'
require './src/strings/first_letter_uppercase'

# Exercise: First letter uppercase?
# Description: write a function that determines when a string starts with an uppercase letter, A-Z.

# Inputs and Expected Outputs:

# Input: "Hello"
# Output: true

# Input: "hello"
# Output: false

# Input: "Hello, world!"
# Output: true

# Input: "hello, world!"
# Output: false

class UpcaseFirstLetterTest < Minitest::Test
  def test_first_letter_uppercased
    assert_equal true, first_letter_uppercased?("Hello")
    assert_equal false, first_letter_uppercased?("hello")
    assert_equal true, first_letter_uppercased?("Hello, world!")
    assert_equal false, first_letter_uppercased?("hello, world!")
  end
end
