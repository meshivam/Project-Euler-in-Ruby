#!/usr/bin/ruby

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

def prime_factors(num)
	hash = Hash.new(0)
	(2..num).each { |b|
		next if !b.prime?
		while num%b == 0
			hash[b] += 1
			num /= b
		end
	}
	hash
end

ah = (2..20).map{ |a| prime_factors(a) }
merged = ah.inject({}) { |aggregate, hash| aggregate.merge(hash) { |k, o, n| [o,n].max }}
merged.map{ |k,v| k**v }.reduce(1, :*)

# Benchmark:
# 0.000000   0.000000   0.000000 (  0.001430)
