def is_unique(strn)
  checker = 0
  for i in 0..strn.length-1 do
    val = strn[i].ord - 'a'.ord
    pattern = 1 << val

    puts "-----"
    puts "checker = %s" % [checker.to_s(2)] 
    puts "1 << val (where val=%d, val.to_s(2) = %s) is equal %d or %s" % [val, val.to_s(2), pattern, pattern.to_s(2)]
    puts "-----"


    not_unique = (checker & pattern) > 0

    if not_unique 
      return false
    end

    checker = checker | pattern
  end

  return true
end

my_strngs = ["abcdefg", "abcdefeg"]

for strn in my_strngs do

  puts "is string [%s] unique? %s" % [strn, is_unique(strn).to_s]

end


