require "minitest/autorun"
require "./src/data_structures/circular_doubly_linked_list"

# Exercise: Circular Doubly Linked List
# Description: Your task is to implement a Circular Doubly Linked List class in Ruby with the following operations:
# - Insertion of a new element at the end of the list.
# - Removal of the last element from the list.
# - Retrieval of the total number of elements currently in the list.
# - Printing the list in a human-readable format (e.g., [1, 2, 3]).

class TestCircularDoublyLinkedList < Minitest::Test
  def test_push_itens
    values = [2, 6, 4, 5]
    circular_doubly_linked_list = CircularDoublyLinkedList.new

    values.each do |value|
      circular_doubly_linked_list.push(value)
    end

    assert_equal circular_doubly_linked_list.pretty_print, values
  end

  def test_pop_itens
    values = [2, 6, 4, 5]
    circular_doubly_linked_list = CircularDoublyLinkedList.new

    values.each do |value|
      circular_doubly_linked_list.push(value)
    end

    circular_doubly_linked_list.pop

    assert_equal circular_doubly_linked_list.pretty_print, [2, 6, 4]
  end

  def test_size
    values = [2, 6, 4, 5]
    circular_doubly_linked_list = CircularDoublyLinkedList.new

    values.each do |value|
      circular_doubly_linked_list.push(value)
    end

    circular_doubly_linked_list.pop


    assert_equal circular_doubly_linked_list.size, 3
  end
end