require 'minitest/autorun'
require "./src/calculations/mean_square_error"

# Exercise: Mean Square Error
# Description: Write a function that calculates the mean square error
# between two arrays of integers.

# Function Requirements:

# It should accept two integer arrays, first_array and second_array, of equal length.
# The function should calculate the square of the absolute value difference for each corresponding pair of integers.
# Finally, it should return the average of these squared differences as a float.
# Examples:

# Given two arrays [1, 2, 3] and [4, 5, 6], the mean square error should be calculated as follows:

# The differences are [3, 3, 3] (since |1-4|=3, |2-5|=3, and |3-6|=3).
# The squares of the differences are [9, 9, 9].
# The average of these squares is 9 (since (9+9+9) / 3 = 9).
# Another example, given [10, 20, 10, 2] and [10, 25, 5, -2], the mean square error should be 16.5 (since (0² + 5² + 5² + 4²) / 4 = 16.5).

# Constraints:

# The input arrays must have equal length.
# The arrays will contain positive or negative integers.

# Inputs and Expected Outputs:
# Input: [1, 2, 3], [4, 5, 6]
# Output: 9

# Input: [10, 20, 10, 2], [10, 25, 5, -2]
# Output: 16.5

# Input: [-1, 0], [0, -1]
# Output: 1

class MeanSquareErrorTest < Minitest::Test
  def test_mean_square_error
    assert_equal 9, mean_square_error([1, 2, 3], [4, 5, 6])
    assert_equal 16.5, mean_square_error([10, 20, 10, 2], [10, 25, 5, -2])
    assert_equal 1, mean_square_error([-1, 0], [0, -1])
  end

  def test_empty_arrays
    assert_equal 0, mean_square_error([], [])
  end

  def test_arrays_with_one_element
    assert_equal 0, mean_square_error([3], [3])
    assert_equal 1, mean_square_error([3], [2])
  end
end
