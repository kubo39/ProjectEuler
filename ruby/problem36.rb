num = 0

i=1
while true
  break if i >= 1000000

  if i.to_s == i.to_s.reverse &&
      i.to_s(2) == i.to_s(2).reverse
    num += i
  end

  i += 2
end

p num
