require 'minitest/autorun'
require './src/strings/count_similar_characters'


class CountSimilarCharactersTest < Minitest::Test
  # Exercise: Counting Occurrences of Characters
  # Description: Write a Ruby method that takes a string as an input and returns a hash with the count of each character in the string.

  # Inputs and Expected Outputs:

  # Input: "hello"
  # Output: {'h' => 1, 'e' => 1, 'l' => 2, 'o' => 1}

  # Input: "Mississippi"
  # Output: {'M' => 1, 'i' => 4, 's' => 4, 'p' => 2}

  # Input: "123321"
  # Output: {'1' => 2, '2' => 2, '3' => 2}

  def test_count_occurrences_of_characters
    assert_equal({'h' => 1, 'e' => 1, 'l' => 2, 'o' => 1}, count_occurrences_of_characters("hello"))
    assert_equal({'M' => 1, 'i' => 4, 's' => 4, 'p' => 2}, count_occurrences_of_characters("Mississippi"))
    assert_equal({'1' => 2, '2' => 2, '3' => 2}, count_occurrences_of_characters("123321"))
  end

  # Exercise: Counting Occurrences of a Specific Character
  # Description: Write a Ruby method that takes a string and a character as inputs and returns the number of times that character appears in the string.

  # Inputs and Expected Outputs:

  # Input: String: "hello", Character: "l"
  # Output: 2

  # Input: String: "Mississippi", Character: "i"
  # Output: 4

  # Input: String: "123321", Character: "1"
  # Output: 2
  def count_occurrences_of_give_character
    assert_equal(2, count_occurrences_of_give_character("hello", "l"))
    assert_equal(4, count_occurrences_of_give_character("Mississippi", "i"))
    assert_equal(2, count_occurrences_of_give_character("123321", "1"))
  end
end


