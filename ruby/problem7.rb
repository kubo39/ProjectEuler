require 'mathn'

g = Fiber.new do
  x = 2
  Fiber.yield x
  while true
     x+= 1
    if x.prime?
      Fiber.yield x
    end
  end
end

10000.times { g.resume }
p g.resume
