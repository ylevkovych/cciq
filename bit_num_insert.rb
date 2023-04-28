def insert_bits(from,to,s_pos,e_pos)

  for i in s_pos..e_pos do
    to = to & ~(1 << i)
  end

  puts to.to_s(2)
  return to | from << s_pos
end

num_from = 10
num_to = 64
s_pos = 2
e_pos = 5

puts "insert %d into %d from pos %d = %d" % [num_from.to_s(2), num_to.to_s(2), s_pos, insert_bits(num_from,num_to,s_pos,e_pos).to_s(2)]

