class Menu

	# require 'CSV'
	# @MENU = {}

		def initialize
			@listing = {:Pasta => 7, :Chicken => 9}
			@order = []
			# @order2 = []
		end

		def order_prices
			@order
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

		def add_to_basket(item, quantity=1)
			item if @listing.has_key?(item)
		end

		def add_prices_to_array(item, quantity=1)
			order2 = []	
			order2 << (@listing[item]*quantity)
			order3 = order2.uniq
			@order.concat(order3)
		end

		def calculate_price
			@order.inject(:+)
		end

		# def add_to_basket(item)
		# 	price = self.price?(item)
		# 	@order.merge!(item => price)
		# end

		def show_all_items
			@listing.each{ | item, price | puts "#{item}: #{price}" }
		end

		# def save_menu(filename = 'menu.csv')
		# 	CSV.open(filename, "w") do |file|
	 #    @MENU.each {|k, v| file << ["#{k}", "#{v}"]}
	 #  	end
		# end

		# def load_menu(filename = 'menu.csv')
		# 	CSV.foreach(filename, "r") do |row|
  #     add_or_modify_item(row[0], row[1])
		# end

end	