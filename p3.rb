#!/usr/bin/ruby

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

# Using slightly modified Fermat's factorization method.
# Read More http://en.wikipedia.org/wiki/Fermat%27s_factorization_method
def fermet_factor_max(n)
	t=(Math.sqrt(n)+1).floor
	k=0
	prime_numbers=[]
	while (t+k)<n
		element = (t+k)**2-n
		if (Math.sqrt(element).to_i == Math.sqrt(element))
			a = t+k+Math.sqrt(element)
			b = t+k-Math.sqrt(element)
			if b == 1
				prime_numbers << a.to_i
				break
			end
			prime_numbers += fermet_factor_max a
			prime_numbers += fermet_factor_max b
			break
		end
		k+=1
	end
	prime_numbers
end

puts fermet_factor_max(600851475143).max

# Benchmark:
# 0.100000   0.000000   0.100000 (  0.104012)
