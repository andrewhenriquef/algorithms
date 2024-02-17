require "minitest/autorun"
require "./src/data_structures/doubly_linked_list"

# Exercise: Doubly Linked List
# Your task is to implement a Doubly Linked List class in Ruby with the following operations:
# - Insertion of a new element at the end of the list.
# - Removal of the last element from the list.
# - Addition of a new element at the beginning of the list.
# - Retrieval of the total number of elements currently in the list.
# - Printing the list in a human-readable format (e.g., [1, 2, 3]).
# - Printing the list in reverse order.

class TestDoublyLinkedList < Minitest::Test
  def test_push_itens
    doubly_linked_list = DoublyLinkedList.new
    doubly_linked_list.push(2)
    doubly_linked_list.push(4)

    assert_equal doubly_linked_list.pretty_print, [2, 4]
  end

  def test_pop_itens
    doubly_linked_list = DoublyLinkedList.new
    doubly_linked_list.push(2)
    doubly_linked_list.push(4)
    doubly_linked_list.pop

    assert_equal doubly_linked_list.pretty_print, [2]
  end

  def test_add_to_head
    doubly_linked_list = DoublyLinkedList.new
    doubly_linked_list.push(2)
    doubly_linked_list.push(4)
    doubly_linked_list.add_to_head(1)

    assert_equal doubly_linked_list.pretty_print, [1, 2, 4]
  end

  def test_size
    doubly_linked_list = DoublyLinkedList.new
    doubly_linked_list.push(2)
    doubly_linked_list.push(4)
    doubly_linked_list.push(5)

    assert_equal doubly_linked_list.size, 3
  end

  def reverse_print_itens
    doubly_linked_list = DoublyLinkedList.new
    doubly_linked_list.push(2)
    doubly_linked_list.push(4)
    doubly_linked_list.push(5)

    assert_equal doubly_linked_list.size, [5, 4, 2]
  end
end
