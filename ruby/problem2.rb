fib = Fiber.new do
  x, y = 1, 1
  while true
    Fiber.yield x
    x, y = x + y, x
  end
end

count = 0
idx = 1
while true
  ans = fib.resume
  break if ans >= 4000000
  count += ans if ans%2==0
end

p count
