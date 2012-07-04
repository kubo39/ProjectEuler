def f n
  x = 0
  for i in 1..(n/2+1)
    x += i if n%i==0
  end
  return x
end

num = 0

for i in 2...10000
  x = f(i)
  if x < 10000
    if f(x) == i && x!=i
      num += i
    end
  end
end

p num
