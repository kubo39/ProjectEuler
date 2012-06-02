p (1..1000).inject{|result, i| result += i **i }.to_s[-10..-1]
  
