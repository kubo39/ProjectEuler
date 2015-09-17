a, b = 1, 1
total = 0
while a <= 4_000_000
  a, b = a + b, a
  total += a if a % 2 == 0
end
p total
