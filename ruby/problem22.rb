arr = []

File.open("names.txt") do |f|
  arr = f.gets.chomp.split(",")
end

arr.map!{|w| w[1...-1] }.sort!

n = 0

arr.each_with_index do |w, i|
  n += (i+1) * w.split('').inject(0){|res, c| res += c.ord - 64 }
end

p n
