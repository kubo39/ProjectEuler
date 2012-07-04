def f x
  n = 0
  for i in 1..(x/2+1)
    if x%i==0
      n += i
    end
  end
  n > x ? n : false
end

arr = []

for i in 12..(28123)
  x = f(i)
  arr << i if x
end

m = []

nar = arr.dup

arr.each do |x|
  m << nar.map {|n| n + x }.select{|x| x <= 28123}
end

m = m.flatten.uniq.inject(&:+)

bn = (1..28123).inject(&:+)

p bn - m
