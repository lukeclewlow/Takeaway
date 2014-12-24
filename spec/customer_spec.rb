require 'customer'
require 'menu'

describe Customer do
	
	let (:customer) {Customer.new}
	let (:menu) {Menu.new}

	it 'should have an empty basket on initialisation' do
		expect(customer.basket_size).to eq(0)	
	end

	it 'should be able to add items to the basket' do
		customer.add_order(menu, :Pasta)
		expect(customer.basket_size).to eq(1)
	end

	it 'should be able to remove items from basket' do
		customer.add_order(menu, :Pasta)
		customer.remove_order(:Pasta)
		expect(customer.basket_size).to eq 0
	end

	it 'should be able to calculate total cost of order' do 
		customer.add_order(menu, :Pasta)
		customer.add_order(menu, :Chicken)
		expect(customer.basket_total_cost).to eq(16)
	end

end