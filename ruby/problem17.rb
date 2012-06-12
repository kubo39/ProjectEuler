num = 0

arr1 = ["", "one", "two", "three", "four", "five", "six",
        "seven", "eight", "nine", "ten", "eleven", "twelve",
        "thirteen", "fourteen", "fifteen", "sixteen",
        "seventeen", "eighteen", "nineteen"]

arr2 = ["", "", "twenty", "thirty", "forty", "fifty", "sixty",
        "seventy", "eighty", "ninety"]

arr1.each do |w|
  num += w.size
end

20.upto(99) do |w|
  a, b = w.to_s.split('').map(&:to_i)
  num += arr2[a].size
  num += arr1[b].size
end

100.upto(999) do |w|
  a, b = w.to_s.split('', 2).map(&:to_i)
  num += arr1[a].size
  num += "hundred".size
  next if w % 100 == 0
  num += "and".size
  if b <= 19
    num += arr1[b].size
  else
    x, y = b.to_s.split('').map(&:to_i)
    num += arr2[x].size
    num += arr1[y].size
  end
end

num += "onethousand".size
p num
