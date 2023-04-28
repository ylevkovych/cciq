def rotate_mtrx(mtrx)
  if mtrx.length == 0 || mtrx[0].length == 0 || mtrx.length != mtrx[0].length
    raise StandardError.new("Matrix vakue error")
  end

  for i in 0..mtrx.length - 1 do
    
    # temp = top[i
    temp = mtrx[0][i]

    # top[i] = left[i]
    mtrx[0][i] = mtrx[i][0]

    # left[i] = bottom[i]
    mtrx[i][0] = mtrx[mtrx.length-1][i]

    # bottom[i] = right[i]
    mtrx[mtrx.length-1][i] = mtrx[i][mtrx.length-1]

    # right[i] = top[[i]
    mtrx[i][mtrx.length-1] = temp

  end
end

mtrx = [[1,2,3],[4,5,6,],[7,8,9,]]

puts "from %s to %s" % [mtrx, rotate_mtrx(mtrx)]


