class Node
  attr_accessor :value, :next_node, :previous_node

  def initialize value, next_node = nil, previous_node = nil
    @value = value
    @next_node = next_node
    @previous_node = previous_node
  end
end

class CircularDoublyLinkedList
  def initialize
    @head = nil
    @length = 0
  end

  def push value
    node = Node.new(value)

    if @head.nil?
      node.next_node = node
      node.previous_node = node

      @head = node
    else
      current_node = @head

      while current_node.next_node != @head do
        current_node = current_node.next_node
      end

      current_node.next_node = node
      node.previous_node = current_node

      node.next_node = @head
      @head.previous_node = node
    end

    @length += 1

    node
  end

  def pop
    return [] if @head.nil?

    if @head.next_node == @head
      @head = nil
      return []
    else
      current_node = @head

      while current_node.next_node != @head do
        current_node = current_node.next_node
      end

      current_node.previous_node.next_node = @head
      @head.previous_node = current_node.previous_node
    end

    @length -= 1
  end

  def size
    @length
  end

  def pretty_print
    return [] if @head.nil?

    linked_list_itens = []

    print "["

    current_node = @head

    while current_node.next_node != @head do
      print "#{current_node.value}, "
      linked_list_itens << current_node.value
      current_node = current_node.next_node
    end

    linked_list_itens << current_node.value
    print "#{current_node.value}]"
    linked_list_itens
  end
end
