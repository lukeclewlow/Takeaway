require 'customer'
require 'menu'
require 'shop'

describe Customer do
	
	let (:customer) {Customer.new}
	let (:menu) {Menu.new}
	let (:shop) {Shop.new}

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

	it 'should be able to finalize an order' do
		expect(customer.finalize_basket).to eq true
	end

end