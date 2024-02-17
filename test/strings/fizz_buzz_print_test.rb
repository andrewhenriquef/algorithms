require "minitest/autorun"
require "./src/strings/fizz_buzz_print"

# Exercise: Fizz Buzz Print
# Description: Write a program that, given an integer, it respects the following rules:
# - For numbers that are multiples of 3, print "Fizz"
# - For numbers that are multiples of 5, print "Buzz"
# - For numbers that are multiples of 3 and 5, print "FizzBuzz"
# - Otherwise, print the number itself

# Inputs and Expected Outputs:
# Input: 1
# Output: 1

# Input: 6
# Output: Fizz

# Input: 10
# Output: Buzz

# Input: 15
# Output: FizzBuzz

class FizzBuzzPrintTest < Minitest::Test
  def test_fizz_buzz_print
    assert_equal "1", fizz_buzz_print(1)
    assert_equal "Fizz", fizz_buzz_print(6)
    assert_equal "Buzz", fizz_buzz_print(10)
    assert_equal "FizzBuzz", fizz_buzz_print(15)
  end
end
