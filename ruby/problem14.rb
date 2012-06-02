def f n
  if n==1
    return 1
  elsif n%2 == 0
    return 1 + f(n/2)
  else
    return 1 + f(n*3+1)
  end
end

n = 0
tmp = 0
(500000..1000000).each do |i|
  if (s=f(i)) > n
    n = s
    tmp = i
  end
end

p tmp
