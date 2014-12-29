require 'shop'
require 'menu'
require 'customer'

describe 'Shop' do

	let (:shop) {Shop.new}
	let (:customer) {Customer.new}
	let (:menu) {Menu.new}

		it 'should be able to recieve a finalized order from the customer' do
			customer.add_order(menu, :Pasta)
			customer.finalize_basket
			expect{shop.receive_order(customer.complete_basket)}.to change{shop.finalized_order}.by(1)
		end

		it 'should be able to confirm price and ask customer to confirm this' do
			customer.add_order(menu, :Pasta)
			customer.finalize_basket
			shop.receive_order(customer.complete_basket)
			expect(shop.confirm_price(customer)).to eq(true)
		end

		xit 'should be able to text customer to let them know order is successful' do
			customer.add_order(menu, :Pasta)
			customer.finalize_basket
			shop.receive_order(customer.complete_basket)
			expect(shop.confirm_order_with_customer).to 
		end


end