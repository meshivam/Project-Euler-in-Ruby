#!/usr/bin/ruby

#The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def diff_sos(num)
	sum_of_numbers = 0
	sum_of_sqs = 0
	(1..num).each { |a|
		sum_of_numbers += a
		sum_of_sqs += (a*a)
	}
	sum_of_numbers**2 - sum_of_sqs
end

puts diff_sos(100)

# Benchmark
# 0.000000   0.000000   0.000000 (  0.000037)
