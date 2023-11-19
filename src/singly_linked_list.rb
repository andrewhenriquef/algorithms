class Node
  attr_accessor :value, :next_node

  def initialize value, next_node = nil
    @value = value
    @next_node = next_node
  end
end

class SinglyLinkedList
  def initialize
    @head = nil
  end

  def push value
    if @head.nil?
      @head = Node.new value
    else
      current_node = @head

      while current_node.next_node != nil do
        current_node = current_node.next_node
      end

      current_node.next_node = Node.new value
    end
  end

  def pop
    return if @head.nil?

    current_node = @head

    while current_node.next_node&.next_node != nil do
      current_node = current_node.next_node
    end

    current_node.next_node = nil
  end

  def add_to_head value
    @head = Node.new value, @head
  end

  def size
    return 0 if @head.nil?

    counter = 1
    current_node = @head

    while current_node.next_node != nil do
      counter += 1
      current_node = current_node.next_node
    end

    counter
  end

  def bubble_sort_linked_list
    current_node = @head
  end

  def pretty_print
    return [] if @head.nil?

    linked_list_itens = []

    print "["

    current_node = @head

    while current_node.next_node != nil do
      print "#{current_node.value}, "
      linked_list_itens << current_node.value
      current_node = current_node.next_node
    end

    linked_list_itens << current_node.value
    print "#{current_node.value}]"
    linked_list_itens
  end
end
