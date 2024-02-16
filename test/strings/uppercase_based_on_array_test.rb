require 'minitest/autorun'
require './src/strings/uppercase_based_on_array'

# Exercise: Upcase Based on Array
# Description: write a function that transforms some letters of a string into uppercase based on an array of positions.

# Inputs and Expected Outputs:

# Input: cachorro, [0,3]
# Output: CacHorro

# Input: cachorro, [0,3,6]
# Output: CacHorRo

# Input: computador, [1,3,5]
# Output: cOmPuTador

# Input: computador, [1,5,3]
# Output: cOmPuTador

class UpcaseBasedOnArrayTest < Minitest::Test
  def test_uppercase_based_on_array
    assert_equal "CacHorro", uppercase_based_on_array("cachorro", [0,3])
    assert_equal "CacHorRo", uppercase_based_on_array("cachorro", [0,3,6])
    assert_equal "cOmPuTador", uppercase_based_on_array("computador", [1,3,5])
    assert_equal "cOmPuTador", uppercase_based_on_array("computador", [1,5,3])
  end
end