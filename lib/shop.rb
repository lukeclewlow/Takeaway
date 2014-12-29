class Shop

	def initialize
		@finalized_order = {}
	end

	def receive_order(order)
		@finalized_order.merge!(order)
	end

	def finalized_order
		@finalized_order.length
	end

	def confirm_price(customer)
		true if customer.basket_total_cost == @finalized_order.values.inject(:+)
	end

end