num = 0

2.upto(999999) do |n|
  if n == n.to_s.split('').map{|i| i.to_i ** 5}.inject(&:+)
    num += n
  end
end

p num
