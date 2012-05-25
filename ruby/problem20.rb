p "#{(1..100).inject(&:*)}".split('').map(&:to_i).inject(&:+)
