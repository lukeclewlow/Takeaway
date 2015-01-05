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

		it 'should be able to confirm price and ask customer to confirm this' do
			customer.add_order(menu, :Pasta, 3)
			customer.finalize_basket
			shop.receive_order(customer.complete_basket, menu.order_prices)
			expect(shop.confirm_price(customer, menu)).to eq(true)
		end

		it 'should be able to text customer to let them know order is successful' do
			allow(shop2).to receive(:send_text).and_return("Message sent...")
			expect(shop2.send_text).to eq("Message sent...")
		end



end