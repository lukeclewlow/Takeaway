class Shop

	def initialize
		@finalized_order = {}
	end

	def incoming_order
	end

	def receive_order(order)
		@finalized_order = order
	end

	def finalized_order
		@finalized_order.length
	end


end