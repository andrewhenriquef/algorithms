require "minitest/autorun"
require "./src/strings/frequenty_words_in_text"

# Exercise: Most frequently used words in a text
# Description: Write a function that, given a string of text (possibly with punctuation and line-breaks),
# returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

# Assumptions:
# - A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
# - Apostrophes can appear at the start, middle or end of a word ('abc, abc', 'abc', ab'c are all valid)
# - Any other characters (e.g. #, \, / , . ...) are not part of a word and should be treated as whitespace.
# - Matches should be case-insensitive, and the words in the result should be lowercased.
# - Ties may be broken arbitrarily.
# - If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, or an empty array if a text contains no words.

# Inputs and Expected Outputs:
# Input: "a a a  b  c c  d d d d  e e e e e"
# Output: ["e", "d", "a"]

# Input: "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"
# Output: ["e", "ddd", "aa"]

# Input: "  //wont won't won't"
# Output: ["won't", "wont"]

# Input: "  , e   .. "
# Output: ["e"]

# Input: "  ...  "
# Output: []

class FrequentyWordsInTextTest < Minitest::Test
  def test_frequenty_words_in_text
    assert_equal ["e", "d", "a"], frequenty_words_in_text("a a a  b  c c  d d d d  e e e e e")
    assert_equal ["e", "ddd", "aa"], frequenty_words_in_text("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")
    assert_equal ["won't", "wont"], frequenty_words_in_text("  //wont won't won't")
    assert_equal ["e"], frequenty_words_in_text("  , e   .. ")
    assert_equal [], frequenty_words_in_text("  ...  ")
  end
end
