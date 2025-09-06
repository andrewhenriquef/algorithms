require 'minitest/autorun'
require './src/sorting/quicksort'

class TestQuicksort < Minitest::Test
  def test_returns_same_array_when_less_than_2_items
    assert_equal [], quicksort([])
    assert_equal [1], quicksort([1])
  end

  def test_returns_sorted_array_when_more_than_2_items
    assert_equal [2, 3, 5, 6, 7], quicksort([5, 3, 7, 6, 2])
  end

  def test_returns_sorted_array_when_has_duplicate_items
    assert_equal [2, 3, 5, 5, 6, 7], quicksort([5, 3, 7, 6, 2, 5])
  end

  def test_returns_sorted_array_when_has_negative_items
    assert_equal [-6, -3, -2, 1, 3, 5, 6, 8, 9], quicksort([9, -3, 5, -2, 6, 8, -6, 1, 3])
  end
end
