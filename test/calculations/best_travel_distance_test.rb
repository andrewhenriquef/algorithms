require "minitest/autorun"
require "./src/calculations/best_travel_distance"


# Exercise: Best Travel

# John and Mary are planning a road trip between several towns designated as A, B, C, and
# so on. Mary has prepared a list of the distances between these towns. They have a list
# ls that contains distances such as [50, 55, 57, 58, 60]. John, who will be driving, does
# not want to travel more than t miles in total and wishes to visit only k towns.

# Your task is to write a function choose_best_sum(t, k, ls) that will return the greatest
# sum of k distances that is less than or equal to t. If no such sum exists, the function
# should return nil, null, or an equivalent value, depending on the programming language
# (for example, -1 in C, C++, and some other languages).

# The parameters are as follows:

# t: the maximum sum of distances John is willing to drive.
# k: the number of towns to visit.
# ls: a list of positive or zero integers representing the distances between the towns.
# Constraints:

# Do not modify the input list ls.
# In some programming languages, the list may be represented as a string.
# The goal is to maximize the sum of distances without exceeding the limit t and by visiting
# exactly k towns.

class BestTravelTest < Minitest::Test
  def test_basic_cases
    ts = [50, 55, 56, 57, 58]
    assert_equal 163, choose_best_sum(163, 3, ts)

    xs = [50]
    assert_nil choose_best_sum(163, 3, xs)

    ys = [91, 74, 73, 85, 73, 81, 87]
    assert_equal 228, choose_best_sum(230, 3, ys)
  end

  def test_edge_cases
    no_towns = []
    assert_nil choose_best_sum(174, 3, no_towns)

    single_town = [51]
    assert_nil choose_best_sum(174, 3, single_town)

    exact_distance = [50, 55, 69]
    assert_equal 174, choose_best_sum(174, 3, exact_distance)
  end
end