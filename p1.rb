#!/usr/bin/ruby

mot = (1..333).map{|a| a*3}
mo5 = (1..199).map{|a| a*5}
(mot + mo5).uniq.inject(0, :+)

# Benchmark:
# 0.000000   0.000000   0.000000 (  0.000317)
