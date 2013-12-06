require_relative 'weighted'
w = Weighted.new({selmon: 1, carp: 4, crucian: 3})
puts w.pick(5)
