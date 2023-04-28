def get_bit(num, i) 
  mask = 1 << i
  return (num & mask) != 0 ? 1 : 0
end

def set_bit(num, i)
  mask = 1 << i
  return num | mask
end

def unset_bit(num, i)
  mask = ~(1 << i)
  return num & mask
end

def update_bit(num, i, isOne)
  mask = ~(1 << i)
  value = isOne ? 1 : 0
  return (num & mask) | (value << i)
end

number = 12
bit = 2

puts "number = %d; bit = %d " % [number, bit]
puts "get bit  = %d" % [get_bit(number, bit)]
puts "set bit #2 = %d" % [set_bit(number, 1)]
puts "unset bit = %d" % [unset_bit(number, bit)]
puts "update bit to 1 = %d" % [update_bit(number, bit,true)]
puts "update bit to 0 = %d" % [update_bit(number,bit,false)]

