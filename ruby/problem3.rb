x = Math.sqrt(600851475143).to_i


def prime? n
  [*2..Math.sqrt(n).to_i].each do |i|
    return false if n%i == 0
  end
  true
end

while true
  if 600851475143 % x == 0
    if prime?(x)
      p x
      break
    end
  end
  x -= 1
end
