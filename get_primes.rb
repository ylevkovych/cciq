def get_list(max)
  list = []
  for i in 0..max do
    list.push(i==0 || i==1 || i==2 ? false : true)
  end
  return list
end

def prn_prime(list)
  i=0
  while i<list.length do
    if list[i]
      puts "%d prime? %s" % [i, list[i].to_s]
    end
    i += 1
  end
end

def set_prime(list)
  i = 2
  while i < list.length do
    j = i
    while j < list.length do
      if j*i < list.length 
        list[j*i] = false
      end
      j += 1
    end
    i +=1
  end
end

prime_max = 10000

list = get_list(prime_max)
set_prime( list )
prn_prime(list)
