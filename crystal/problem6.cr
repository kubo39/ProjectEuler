p ((1..100).inject{|a, b| a + b } ** 2 - (1..100).map{|i| i ** 2}.inject{|a, b| a + b }).to_i
