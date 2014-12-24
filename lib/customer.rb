class Customer

	def initialize
		@basket = {}
	end

	def basket_size
		@basket.length
	end

	def add_order(menu, item)
		@basket.merge!(menu.add_to_basket(item))
	end

	def remove_order(item)
		@basket.delete(item)
	end

	def basket_total_cost
		@basket.values.inject(:+)
	end	

end