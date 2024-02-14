require "minitest/autorun"
require "./src/strings/palindrome_string"

# Exercise: Finding Palindromes
# Description: Write a Ruby method that checks if a given string is a palindrome.
# A palindrome is a word, phrase, number, or other sequences of characters that reads the same forward and backward (ignoring spaces, punctuation, and case).

# Inputs and Expected Outputs:

# Input: "A man, a plan, a canal, Panama"
# Output: true

# Input: "Madam, I'm Adam"
# Output: true

# Input: "Hello, World!"
# Output: false

class TestPalindromeString < Minitest::Test
  def test_palindrome_string
    assert_equal true, palindrome?("A man, a plan, a canal, Panama")
    assert_equal true, palindrome?("Madam, I'm Adam")
    assert_equal false, palindrome?("Hello, World!")
  end
end