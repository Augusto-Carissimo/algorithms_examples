class Node
  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def repr
    "<Node data: #{self.data[:data]}>"
  end
end

node = Node.new(data: 10)

p node.repr