m = 0
100.upto(999) do |i|
  100.upto(999) do |j|
    tmp = i * j
    m = tmp if tmp > m && tmp.to_s == tmp.to_s.reverse
  end
end
p m
