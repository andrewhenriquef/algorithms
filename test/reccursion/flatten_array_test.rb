require "minitest/autorun"
require "./src/reccursion/flatten_array"

# Exercise: Flatten Array (Recursive)
# Description: Your task is to write a Ruby method that takes a (possibly nested) array and returns
# a single flat array containing all values regardless of nesting depth.
# You cannot use Ruby's built-in Array#flatten method.
# For each element, ask: is it an array? If yes, recurse into it. If no, collect it.

# Inputs and Expected Outputs:
# Input: [[], 1, [2]]
# Output: [1, 2]

# Input: [1, [2, 3], 4, 5, [6, [7]]]
# Output: [1, 2, 3, 4, 5, 6, 7]

# Input: [[1, 2], [3, [4, 5]]]
# Output: [1, 2, 3, 4, 5]

# Input: [[], [[]], [[[]]], [[[[]]]]]
# Output: []

# Input: [1, [2, [3, [4, [5, [6, [7, [8]]]]]]]]
# Output: [1, 2, 3, 4, 5, 6, 7, 8]

# Input: []
# Output: []

class FlattenArrayTest < Minitest::Test
  def test_flattening_empty_array_returns_empty_array
    assert_equal [], flatten_array([])
  end

  def test_flattening_array_with_empty_nested_arrays_and_values_returns_only_values
    assert_equal [1, 2], flatten_array([[], 1, [2]])
  end

  def test_flattening_array_with_mixed_nesting_returns_flat_array
    assert_equal [1, 2, 3, 4, 5, 6, 7], flatten_array([1, [2, 3], 4, 5, [6, [7]]])
  end

  def test_flattening_array_with_two_levels_of_nesting_returns_flat_array
    assert_equal [1, 2, 3, 4, 5], flatten_array([[1, 2], [3, [4, 5]]])
  end

  def test_flattening_deeply_nested_empty_arrays_returns_empty_array
    assert_equal [], flatten_array([[], [[]], [[[]]], [[[[]]]]])
  end

  def test_flattening_deeply_nested_array_with_values_at_every_level_returns_flat_array
    assert_equal [1, 2, 3, 4, 5, 6, 7, 8], flatten_array([1, [2, [3, [4, [5, [6, [7, [8]]]]]]]])
  end
end
