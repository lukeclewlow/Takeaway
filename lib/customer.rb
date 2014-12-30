class Customer

	def initialize
		@basket = {}
	end

	def basket_size
		@basket.length
	end

	def add_order(menu, item)
		@basket.merge!(menu.add_to_basket(item.to_sym))
	end

	def remove_order(item)
		@basket.delete(item)
	end

	def basket_total_cost
		@basket.values.inject(:+)
	end	

	def finalize_basket
		self.finalize
	end

	def finalize
		true
	end

	def complete_basket
		@basket
	end

	def send_finalized_order_to_shop(shop=shop, basket=customer.complete_basket)
		# if finalize == true
			shop.receive_order(basket)
		# else p "Not in stock"
		# end
	end

end