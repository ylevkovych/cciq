class Node

  def initialize(id, left, right)
    @id = id
    @left = left
    @right = right
  end

  def to_string
    str = "id: "+@id

    str += ", left: "
    if @left != nil
      str += @left.id
    else
      str += "nil"
    end

    str += ", right: "
    if @right != nil
      str += @right.id
    else
      str += "nil"
    end
  end

  def id
    return @id
  end

  def left
    return @left
  end

  def right
    return @right
  end

end

def createTree()

  a2_3 = Node.new("a2_3", nil, nil)
  a2_2 = Node.new("a2_2", nil, nil)
  a2_1 = Node.new("a2_1", nil, nil)
  a2_0 = Node.new("a2_0", nil, nil)
  a1_1 = Node.new("a1_1", a2_2, a2_3)
  a1_0 = Node.new("a1_0", a2_0, a2_1)
  a0 = Node.new("a0", a1_0, a1_1)

  b2_3 = Node.new("b2_3", nil, nil)
  b2_2 = Node.new("b2_2", nil, nil)
  b2_1 = Node.new("b2_1", nil, nil)
  b2_0 = Node.new("b2_0", nil, nil)
  b1_1 = Node.new("b1_1", b2_2, b2_3)
  b1_0 = Node.new("b1_0", b2_0, b2_1)
  b0 = Node.new("b0", b1_0, b1_1)

  n0 = Node.new("n0", a0, b0) 

  return n0
end


def printTree(root)
  if root == nil 
    return
  end

  puts root.to_string
  printTree(root.left)
  printTree(root.right)

end

def getHeight(root)

  if root == nil
    return -1
  end

  return [getHeight(root.left), getHeight(root.right)].max + 1

end

tree = createTree()

printTree(tree)

puts getHeight(tree)
