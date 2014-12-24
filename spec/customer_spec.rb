require 'customer'

describe Customer do
	
	let (:customer) {Customer.new}

	it 'should have an empty basket on initialisation' do
		expect(customer.basket_size).to eq(0)	
	end

	xit 'should be able to add items to the basket' do
		customer.add_item(:Pizza)
		expect(customer.basket_size).to eq(1)
	end

end