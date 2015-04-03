#!/usr/bin/ruby

flag = false
product = nil
(1..1000).each { |a|
	((a+1)..1000).each { |b|
		c = 1000 - a - b
		if c**2 == a**2 + b**2
			product = a*b*c
			flag = true
		end
	}
	break if flag
}
product

# Benchmark:
# 0.060000   0.000000   0.060000 (  0.060482)
