#!/usr/bin/ruby

require 'prime'

Prime.take_while{|p| p < 2000000}.reduce(0, :+)
# Benchmark:
# 0.830000   0.000000   0.830000 (  0.847030)
