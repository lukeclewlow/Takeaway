require 'shop'
require 'menu'
require 'customer'

describe 'Shop' do

	let (:shop) {Shop.new}
	let (:shop2) {double :shop}
	let (:customer) {Customer.new}
	let (:menu) {Menu.new}
	# shop.send_message(:true)

		it 'should initialize with an empty order' do
			expect(shop.finalized_order).to eq(0)
		end

		it 'should be able to receive a finalized order from the customer' do
			customer.add_order(menu, :Pasta)
			customer.finalize_basket
			expect{shop.receive_order(customer.complete_basket, menu.order_prices)}.to change{shop.finalized_order}.by(1)
		end

		xit 'should be able to confirm price and ask customer to confirm this' do
			customer.add_order(menu, :Pasta)
			customer.finalize_basket
			shop.receive_order(customer.complete_basket, menu.order_prices)
			expect(shop.confirm_price(customer)).to eq(true)
		end

		xit 'should be able to text customer to let them know order is successful' do
			expect(shop2.stub(:send_text).and_return("Message sent...")).to eq("Message sent...")
		end


end