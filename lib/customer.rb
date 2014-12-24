class Customer

	def initialize
		@basket = {}
	end

	def basket_size
		@basket.length
	end

	def add_item(menu, item)
		@basket.merge!(menu.add_to_basket(item))
	end

end