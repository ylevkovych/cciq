def are_permutated(s, t)
  if s.length != t.length
    return false
  end

  checker = Array.new(128,0)

  for c in s.split(//) do
    checker[c.ord-'a'.ord] += 1
  end

  for c in t.split(//) do
    checker[c.ord-'a'.ord] -= 1
    if checker[c.ord-'a'.ord] < 0
      return false
    end
  end

  for i in checker do
    if i != 0
      return false
    end
  end

  return true

end


str1 = "abcdef"
str2 = "adcbfe"

puts "Are [%s] and [%s] permutated? %s" % [str1, str2, are_permutated(str1,str2)]
