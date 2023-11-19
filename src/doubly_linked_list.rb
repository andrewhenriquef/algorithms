class Node
  attr_accessor :value, :next_node, :previous_node

  def initialize value, next_node = nil, previous_node = nil
    @value = value
    @next_node = next_node
    @previous_node = previous_node
  end
end

class DoublyLinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def push value
    if @head.nil?
      @head = Node.new(value)
    else
      current_node = @head

      while current_node.next_node != nil do
        current_node = current_node.next_node
      end

      new_node = Node.new value, nil, current_node

      @tail = new_node
      current_node.next_node = new_node
    end
  end

  def pop
    return [] if @head.nil?

    if @head.next_node.nil?
      @head = nil
      return @head
    else
      current_node = @head

      while current_node.next_node != nil do
        current_node = current_node.next_node
      end

      current_node.previous_node.next_node = nil
    end

    current_node.value
  end

  def add_to_head value
    if @head.nil?
      @head = Node.new(value)
    else
      @head = Node.new value, @head, nil
    end
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

  def reverse_print_itens
    return [] if @head.nil?

    current_node = @tail

    linked_list_itens = []

    print "["

    while current_node.previous_node != nil do
      print "#{current_node.value}, "
      linked_list_itens << current_node.value
      current_node = current_node.previous_node
    end

    print "#{current_node.value}]"
    linked_list_itens
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
