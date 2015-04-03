#!/usr/bin/ruby

require 'prime'

pn = 1
count = 0 
while true
	pn += 1
	next if pn != 2 && pn.even?
	count += 1 if pn.prime?
	break if count == 10001
end
pn

# Benchmark:
# 1.200000   0.000000   1.200000 (  1.201821)
