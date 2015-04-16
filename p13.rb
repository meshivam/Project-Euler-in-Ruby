#!/usr/bin/ruby

# Since max sum of 50 digits is 450 any value further 13 won't matter.

numbers = File.read('p13-data').each_line.map{|l| l.chomp[0..13].to_i}
puts numbers.reduce(0, &:+).to_s[0..9]

# Benchmark:
# 0.000000   0.000000   0.000000 (  0.000213)
