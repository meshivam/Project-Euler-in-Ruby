#!/usr/bin/ruby

def get_palindromes(size)
	max_number = ([9]*size).join.to_i
	lsd = max_number * max_number
	palindromes = []
	while true
		lsd -= 1
		if lsd.to_s == lsd.to_s.reverse
			palindromes << lsd
			break if (100..999).to_a.reverse.detect { |a| lsd % a == 0 && (lsd/a).to_s.size == 3 }
		end
	end
	palindromes.last
end

puts get_palindromes(3)

# Benchmark:
# 0.080000   0.010000   0.090000 (  0.088290)
