#!/usr/bin/ruby

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def get_multiples(max)
	mot = (1..max_limit(max, 3)).map { |a| a*3 }
	mo5 = (1..max_limit(max, 5)).map { |a| a*5 }
	(mot + mo5).uniq.inject(0, :+)
end

def max_limit(max, mul)
	(max-1)/mul
end

puts get_multiples(1000)

# Benchmark:
# 0.000000   0.000000   0.000000 (  0.000317)
