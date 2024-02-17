require "minitest/autorun"
require "./src/data_structures/singly_linked_list"

# Exercise: Singly Linked List
# Description: Your task is to build a dynamic data structure in Ruby that allows for efficient insertion and deletion
# of elements. The structure should maintain an ordered collection of elements and support the following operations:
# - Insertion of a new element at the end of the collection.
# - Removal of the last element from the collection.
# - Retrieval of the total number of elements currently in the collection.
# In addition to the core functionality, your implementation should include a method to print the contents of the list
# in a human-readable format (e.g., [1, 2, 3]).

class TestSinglyLinkedList < Minitest::Test
  def test_push_itens
    singly_linked_list = SinglyLinkedList.new
    singly_linked_list.push(2)
    singly_linked_list.push(4)

    assert_equal singly_linked_list.pretty_print, [2, 4]
  end

  def test_pop_itens
    singly_linked_list = SinglyLinkedList.new
    singly_linked_list.push(2)
    singly_linked_list.push(4)
    singly_linked_list.pop

    assert_equal singly_linked_list.pretty_print, [2]
  end

  def test_add_to_head
    singly_linked_list = SinglyLinkedList.new
    singly_linked_list.push(2)
    singly_linked_list.push(4)
    singly_linked_list.add_to_head(1)

    assert_equal singly_linked_list.pretty_print, [1, 2, 4]
  end

  def test_size
    singly_linked_list = SinglyLinkedList.new
    singly_linked_list.push(2)
    singly_linked_list.push(4)
    singly_linked_list.push(5)

    assert_equal singly_linked_list.size, 3
  end
end