total = 0_u64
(1..999).each {|i| total += i if i % 3 == 0 || i % 5 == 0 }
puts total
