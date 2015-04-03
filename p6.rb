#!/usr/bin/ruby

sum_of_numbers = 0
sum_of_sqs = 0
(1..100).each { |a|
	sum_of_numbers += a
	sum_of_sqs += (a*a)
}
sum_of_numbers**2 - sum_of_sqs

# Benchmark
# 0.000000   0.000000   0.000000 (  0.000037)
