(1..332).each do |a|
  (2..499).each do |b|
    next if a >= b
    c = 1000 - (a+b)
    next if b >= c
    next if (a+b+c != 1000)
    if (c*c - (a*a + b*b)) == 0
      puts "a=#{a},b=#{b},c=#{c}"
      p a*b*c
    end
  end
end
