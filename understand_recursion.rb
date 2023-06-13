def decrement_positive_by_one(num)

  if num < 1
    return
  end
    
  decrement_positive_by_one(num-1)

  puts num.to_s

end

decrement_positive_by_one(10)
