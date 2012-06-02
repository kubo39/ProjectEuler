num = 0

100.upto(999) do |i|
  100.upto(999) do |j|
    z = i * j
    if z.to_s == z.to_s.reverse && z > num
      num = z
    end
  end
end

p num
