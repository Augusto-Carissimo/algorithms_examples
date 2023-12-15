class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end

  def __repr__
    "<Node data: #{self.data}>"
  end
end

class LinkedList
  attr_accessor :head

  def head
    @head if @head
  end

  def is_empty?
    @head == nil
  end

  def size
    current = @head
    count = 0

    while current
      count += 1
      current = current.next_node
    end
    count
  end

  def add(data)
    new_node = Node.new(data, @head)
    self.head= new_node
    __repr__
  end

  def search(data)
    current = @head
    while current
      if current.data == data
        return current
      else
        current = current.next_node
      end
    end
    return 'Not found'
  end

  def search_index(index)
    if index > self.size - 1
      return 'Index is out of range'
    end

    if index == 0
      return @head
    end

    if index > 0
      position = index
      current = @head

      while position > 0
        current = current.next_node
        position -= 1
      end

      return current
    end
  end

  def insert(data, index)
    if index > self.size
      return 'Index is out of range'
    end

    if index == 0
      self.add(data)
    end

    if index > 0
      new_node = Node.new(data)
      position = index
      current = @head

      while position > 1
        current = current.next_node
        position -= 1
      end

      prev_node = current
      next_node = current.next_node

      prev_node.next_node = new_node
      new_node.next_node = next_node
    end

    __repr__
  end

  def remove(key)
    current = @head
    previous = nil
    found = false

    while current && !found
      if current.data == key && current == @head
        @head = current.next_node
        found = true
      elsif current.data == key
        previous.next_node = current.next_node
        found = true
      elsif current.next_node == nil
        return 'Key not in list'
      else
        previous = current
        current = current.next_node
      end
    end
    current.__repr__
  end

  def remove_index(index)
    if index > self.size - 1
      return 'Index is out of range'
    end

    if index == 0
      @head = @head.next_node
      return @head.__repr__
    end

    if index > 0
      position = index
      current = @head
      previous = nil
      while position > 0
        position -= 1
        previous = current
        current = current.next_node
      end

      previous.next_node = current.next_node
      return current.__repr__
    end
  end

  def __repr__
    nodes = []
    current = @head

    while current
      if current == @head
        nodes << "[Head: #{current.data}]"
      elsif current.next_node.nil?
        nodes << "[Tail: #{current.data}]"
      else
        nodes << "[#{current.data}]"
      end
      current = current.next_node
    end

    nodes.join('~>')
  end
end
