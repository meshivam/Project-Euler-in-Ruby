#!/usr/bin/ruby

require 'prime'

def no_of_factors(number)
	primes, powers = number.prime_division.transpose
	powers.map{|a| a+1}.reduce(&:*)
end

def min_divisors(num)
	i = 1
	last = 1
	while true
		i+=1
		last += i
		break if no_of_factors(last) > num
	end
	last
end

puts min_divisors(500)

# Benchmark
# 1.300000   0.000000   1.300000 (  1.307182)
