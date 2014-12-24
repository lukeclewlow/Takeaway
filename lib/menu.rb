class Menu

	def initialize
		@listing = {:Pasta => 7}
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
		@listing[item]
	end

end