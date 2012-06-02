fib = Fiber.new do
  a,b = 1, 1
  Fiber.yield a
  while true
    Fiber.yield a
    a,b = a + b, a
  end
end

counter = 0
while true
  x = fib.resume
  counter += 1
  if x >= 10 ** 999
    p counter
    break
  end
end
