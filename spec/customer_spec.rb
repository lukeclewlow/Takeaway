require 'customer'
require 'menu'

describe Customer do
	
	let (:customer) {Customer.new}
	let (:menu) {Menu.new}

	it 'should have an empty basket on initialisation' do
		expect(customer.basket_size).to eq(0)	
	end

	it 'should be able to add items to the basket' do
		customer.add_item(menu, :Pasta)
		expect(customer.basket_size).to eq(1)
	end

end