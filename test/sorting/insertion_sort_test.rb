require "minitest/autorun"
require "./src/sorting/insertion_sort"

# Exercise: Insertion Sort
# Description: Write a function that implements the Insertion Sort algorithm to sort an array of
# integers in ascending order.

# Insertion Sort is a simple and intuitive sorting algorithm that builds the final sorted array
# (or list) one element at a time. It is much less efficient on large lists than more advanced
# algorithms such as quicksort, heapsort, or merge sort, but it has advantages for small data
# sets and is efficient for data sets that are already substantially sorted. Here's how the
# Insertion Sort algorithm works:

# Starting from the second element:

# Consider the first element to be a sorted subarray of one element.
# The sorting process starts from the second element in the array.
# Compare and Insert:

# Take the current element and compare it with the elements in the sorted subarray (to the left
# of the current element).
# Shift all elements in the sorted subarray that are greater than the current element to the
# right by one position, to make space for the current element.
# Insert the current element:

# Insert the current element into the correct position in the sorted subarray.
# Repeat:

# Move to the next element in the array and repeat steps 2 and 3 until the entire array is sorted.
# Example:
# Consider an array [8, 4, 3, 5, 9, 1]:

# Start with the second element (4). Compare it with the first element (8) and swap them:
# [4, 8, 3, 5, 9, 1].
# Move to the third element (3). Compare it with the sorted subarray [4, 8] and insert it in the
# correct position: [3, 4, 8, 5, 9, 1].
# Continue this process for each element in the array.
# After completing this process for all elements, the array will be sorted in ascending order.

# let's break down the insertion sort algorithm step by step using an example array: [4, 3, 2, 10, 12, 1, 5, 6].

# Initialization: We start by assuming that the first element of the array is already sorted. In our case, this
# is the subarray [4]. The rest of the array [3, 2, 10, 12, 1, 5, 6] is unsorted.

# First Iteration: We take the first element of the unsorted part, which is 3, and insert it into the correct
# position in the sorted part. The sorted part becomes [3, 4].

# Second Iteration: We take the next element of the unsorted part, which is 2, and insert it into the correct
# position in the sorted part. The sorted part becomes [2, 3, 4].

# Third Iteration: We take 10 and insert it into the sorted part. Since 10 is larger than all the elements in the
# sorted part, it stays in its current position. The sorted part becomes [2, 3, 4, 10].

# Fourth Iteration: We take 12 and insert it into the sorted part. Similar to 10, 12 is larger than all the elements
# in the sorted part, so it stays in its current position. The sorted part becomes [2, 3, 4, 10, 12].

# Fifth Iteration: We take 1 and insert it into the sorted part. Since 1 is smaller than all the elements in the
# sorted part, it moves to the beginning. The sorted part becomes [1, 2, 3, 4, 10, 12].

# Sixth Iteration: We take 5 and insert it into the sorted part. 5 moves past 10 and 12 to its correct position. The
# sorted part becomes [1, 2, 3, 4, 5, 10, 12].

# Seventh Iteration: We take 6 and insert it into the sorted part. 6 moves past 10 and 12 to its correct position.
# The sorted part becomes [1, 2, 3, 4, 5, 6, 10, 12].

# End: Now, the entire array is sorted.

# This is a simplified explanation. In the actual algorithm, the "insertion" is done by repeatedly swapping adjacent elements as needed.

# my notes:
# - Start from the second element
# - Consider the elements before the currente elemente as a sorted subarray
# - Compare the values with the sorted subarray to the left of the current element

# Inputs and Expected Outputs:
# Input: [8, 4, 3, 5, 9, 1]
# Output: [1, 3, 4, 5, 8, 9]

# Input: [64, 34, 25, 12, 22, 11, 90]
# Output: [11, 12, 22, 25, 34, 64, 90]

# Input: [5, 1, 4, 2, 8]
# Output: [1, 2, 4, 5, 8]

class InsertionSortTest < Minitest::Test
  def test_insertion_sort
    assert_equal [1, 3, 4, 5, 8, 9], insertion_sort([8, 4, 3, 5, 9, 1])
    assert_equal [11, 12, 22, 25, 34, 64, 90], insertion_sort([64, 34, 25, 12, 22, 11, 90])
    assert_equal [1, 2, 4, 5, 8], insertion_sort([5, 1, 4, 2, 8])
  end
end