def power_of_three? n
  return n % 3 == 0
end

def power_of_five? n
  return n % 5 == 0
end

def main
  total = 0_u64
  (1..999).each do |i|
    if power_of_three?(i)
      total += i
    elsif power_of_five?(i)
      total += i
    end
  end
  puts total
end

main
