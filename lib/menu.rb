class Menu

	require 'csv'

	def initialize
		@listing = {:Pasta => 7, :Chicken => 9}
		@order = {}
	end

	def listing_count
		@listing.length
	end

	def add_or_modify_item(item, price)
		@listing.merge!(item.to_sym => price)
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

	def show_all_items
		@listing.each{ | item, price | puts "#{item}: #{price}" }
	end

end	