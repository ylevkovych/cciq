def rotate_mtrx(mtrx)
  if mtrx.length == 0 || mtrx[0].length == 0 || mtrx.length != mtrx[0].length
    raise StandardError.new("Matrix vakue error")
  end

  first = 0
  last = mtrx.length-1
  for i in 0..last-1 do
    
    # top -> temp
    temp = mtrx[0][i]

    # left -> top
    mtrx[0][i] = mtrx[last-i][0]

    # bottom -> left
    mtrx[last-i][0] = mtrx[last][last-i]

    # right -> bottom
    mtrx[last][last-i] = mtrx[i][last]

    # top -> right
    mtrx[i][last] = temp

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
