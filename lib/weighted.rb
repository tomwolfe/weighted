class Weighted
	attr_accessor :sum_weights, :intervals
	attr_reader :items

	def initialize(items)
		@items = items
		generate_intervals_sum_weights
	end

	def items=(items)
		@items = items
		generate_intervals_sum_weights
	end

	def pick(count = 1)
		return_vals = []
		return_val = 0
		count.times do
			r = rand(1..@sum_weights)
			@intervals.keys.each { |key| return_val = @intervals[key] if r >= key }
			return_vals << return_val
		end
		puts return_vals
	end

	def generate_intervals_sum_weights
		@sum_weights = 0
		@intervals = {}
		@items.each_pair do |key, value|
			@sum_weights += value
			@intervals[@sum_weights] = key
		end
	end
end
