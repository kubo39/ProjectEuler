x = [2, 3, 5, 7]

i = 11
while true
  unless x.any? {|j| i%j == 0}
    x << i
  end
  i += 2
  break if i > 2000000
end

p x.inject(&:+)
