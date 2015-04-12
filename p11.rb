#!/usr/bin/ruby

pats = File.read('p11-grid').each_line.map { |line| line.chomp.split.map(&:to_i) }
rd = []
ld = []
hs = []
ps = []
(0...20).each { |i|
	(0...20).each { |j|
		rd << pats[i][j] * pats[i+1][j+1] * pats[i+2][j+2] * pats[i+3][j+3] if j <= 16 && i <= 16
		ld << pats[j][i+3] * pats[j+1][i+2] * pats[j+2][i+1] * pats[j+3][i] if j <= 16 && i <= 16
		hs << pats[i][j] * pats[i][j+1] * pats[i][j+2] * pats[i][j+3] if j <= 16
		ps << pats[i][j] * pats[i+1][j] * pats[i+2][j] * pats[i+3][j] if i <= 16
	}	
}
puts [rd.max,ld.max,hs.max,ps.max].max
# Benchmark:
# 0.000000   0.000000   0.000000 (  0.001275)
