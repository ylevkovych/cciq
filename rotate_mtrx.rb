def rotate_mtrx(mtrx)
  if mtrx.length == 0 || mtrx[0].length == 0 || mtrx.length != mtrx[0].length
    raise StandardError.new("Matrix vakue error")
  end

  for layer in 0..mtrx.length/2-1 do

  first = layer
  last = mtrx.length-1-layer
  
  for i in first..last-1 do
    offset = i - first 
    # top -> temp
    temp = mtrx[first][i]

    # left -> top
    mtrx[first][i] = mtrx[last-offset][first]

    # bottom -> left
    mtrx[last-offset][first] = mtrx[last][last-offset]

    # right -> bottom
    mtrx[last][last-offset] = mtrx[i][last]

    # top -> right
    mtrx[i][last] = temp

  end

  end
end

mtrx3x3 = [[1,2,3],[4,5,6,],[7,8,9,]]
mtrx4x4 = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]

mtrx = mtrx4x4

print("\nFrom\n")
print(mtrx)
rotate_mtrx(mtrx)
print("\n\nTo\n")
print(mtrx)
print("\n")
