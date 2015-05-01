#!/usr/bin/ruby

hash = {}
(1..1000000).each { |i|
	orig = i
	arr = []
	while i != 1
		break if hash[i]
		arr << i
		if i.odd?
			i = (3*i) + 1
		else
			i = i/2
		end
	end
	i == 1 ? hash[orig] = arr.size+1 : hash[orig] = arr.size + hash[i]
}
p hash.key(hash.values.max)

# Benchmark:
# 6.420000   0.020000   6.440000 (  6.435418)
