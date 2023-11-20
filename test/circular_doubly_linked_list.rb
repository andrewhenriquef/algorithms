
require "./src/circular_doubly_linked_list"
require "minitest/autorun"

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