require "minitest/autorun"
require "./src/sorting/bubble_sort"

# Exercise: Bubble Sort
# Description: Write a method in Ruby that implements the Bubble Sort algorithm to sort an array of integers in ascending order.
# Bubble Sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements,
# and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. The algorithm
# is named for the way smaller elements "bubble" to the top of the list (beginning of the array) while larger elements sink to
# the bottom (end of the array). Here's a step-by-step explanation of how Bubble Sort works:

# Starting with the first element in the array, compare it with the next element.

# If the first element is greater than the second element, swap them. If not, move to the next pair of elements.
# Continue this process for each pair of adjacent elements in the array.

# After the first pass, the largest element will have "bubbled up" to the last position in the array.
# Repeat the process for the entire array, but exclude the last element (since it's already sorted).

# With each pass, the range of elements to be compared reduces by one, as the largest elements are successively put into their correct positions at the end of the array.
# Continue repeating the process until no swaps are needed in a complete pass.

# This indicates that the array is sorted, and the algorithm can terminate.
# Example:
# Consider an array [5, 3, 8, 4, 2]:

# First pass:
# - Compare 5 and 3, swap them: [3, 5, 8, 4, 2]
# - Compare 5 and 8, no swap: [3, 5, 8, 4, 2]
# - Compare 8 and 4, swap them: [3, 5, 4, 8, 2]
# - Compare 8 and 2, swap them: [3, 5, 4, 2, 8]
# Second pass (exclude the last element, 8):
# - Compare 3 and 5, no swap: [3, 5, 4, 2, 8]
# - Compare 5 and 4, swap them: [3, 4, 5, 2, 8]
# - Compare 5 and 2, swap them: [3, 4, 2, 5, 8]
# Third pass (exclude the last two elements, 5 and 8):
#  - Compare 3 and 4, no swap: [3, 4, 2, 5, 8]
#  - Compare 4 and 2, swap them: [3, 2, 4, 5, 8]
# Fourth pass (exclude the last three elements, 4, 5, and 8):
# - Compare 3 and 2, swap them: [2, 3, 4, 5, 8]
# No more swaps needed, the array is sorted.

# Input: [5, 3, 8, 4, 2]
# Output: [2, 3, 4, 5, 8]

# Input: [64, 34, 25, 12, 22, 11, 90]
# Output: [11, 12, 22, 25, 34, 64, 90]

# Input: [5, 1, 4, 2, 8]
# Output: [1, 2, 4, 5, 8]

class BubbleSortTest < Minitest::Test
  def test_bubble_sort
    assert_equal [2, 3, 4, 5, 8], bubble_sort([5, 3, 8, 4, 2])
    assert_equal [11, 12, 22, 25, 34, 64, 90], bubble_sort([64, 34, 25, 12, 22, 11, 90])
    assert_equal [1, 2, 4, 5, 8], bubble_sort([5, 1, 4, 2, 8])
  end
end