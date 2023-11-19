require "./src/singly_linked_list"
require "minitest/autorun"

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