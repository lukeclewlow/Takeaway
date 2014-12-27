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

		xit 'should be able to 	'

end