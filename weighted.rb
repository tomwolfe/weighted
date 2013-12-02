class Weighted
	attr_accessor :items, :sum_weights, :intervals

	def initialize(items)
		@items = items
		@sum_weights = 0
		@intervals = {}
		generate_intervals_sum_weights
	end

	def pick(count = 1)
		return_vals = []
		return_val = 0
		count.times do
			r = rand(@sum_weights)
			@intervals.keys.each { |key| return_val = @intervals[key] if r >= key }
			return_vals << return_val
		end
		puts return_vals
	end

	def generate_intervals_sum_weights
		@items.each_pair do |key, value|
			@sum_weights += value
			@intervals[@sum_weights] = key
		end
	end
end
