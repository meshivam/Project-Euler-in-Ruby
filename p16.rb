#!/usr/bin/ruby

(2**1000).to_s.chars.map(&:to_i).reduce(:+)

# Benchmark:
# 0.000000   0.000000   0.000000 (  0.000191)
