class Node

  def initialize(data, left, right)
    @data = data
    @left = left
    @right = right
  end

  def to_string
    puts "Data: "+@data
  end

end

n = Node.new("123", nil, nil)

n.to_string
