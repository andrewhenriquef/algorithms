class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

class BinarySearchTree
  def initialize
    @root = nil
  end

  def push(value)
    if @root.nil?
      @root = Node.new(value)
    else
      current_node = @root
      continue = true

      while continue do
        if value > current_node.value
          right_node = current_node.right
          if right_node.nil?
            current_node.right = Node.new(value)
            continue = false
          else
            current_node = current_node.right
            next
          end
        elsif value < current_node.value
          left_node = current_node.left
          if left_node.nil?
            current_node.left = Node.new(value)
            continue = false
          else
            current_node = current_node.left
            next
          end
        end
      end

      @root
    end
  end

  def include?(value)
    current_node = @root

    while current_node != nil do
      case value <=> current_node.value
      when 1 then current_node = current_node.right
      when -1 then current_node = current_node.left
      when 0 then break
      end
    end

    return false if current_node.nil?

    current_node.value == value
  end
end

binary_search_tree = BinarySearchTree.new
binary_search_tree.push(3)
binary_search_tree.push(1)
binary_search_tree.push(5)


binary_search_tree.include? 4
binary_search_tree.include? 5
binary_search_tree.include? 1
binary_search_tree.include? 3
binary_search_tree.include? 2
