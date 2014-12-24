class Menu

	def initialize
		@listing = {:Pasta => 7}
		@order = {}
	end

	def listing_count
		@listing.length
	end

	def add_or_modify_item(item, price)
		@listing.merge!(item => price)
	end

	def remove_item(item)
		@listing.delete(item)
	end

	def price?(item)
		@listing.fetch(item)
	end

	def add_to_basket(item)
		price = self.price?(item)
		@order.merge!(item => price)
	end

end	