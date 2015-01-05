require 'shop'
require 'menu'
require 'customer'

describe 'Shop' do

	let (:shop) {Shop.new}
	let (:shop2) {double :shop}
	let (:customer) {Customer.new}
	let (:menu) {Menu.new}

		it 'should initialize with an empty order' do #is this compltely pointless (it certainly seems so)
			allow(shop2).to receive(:finalized_order).and_return(0)
			expect(shop2.finalized_order).to eq(0)
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
			customer.add_order(menu, :Pasta, 3)
			shop.receive_order(customer.complete_basket, menu.order_prices)
			expect(shop).to receive(:send_text).with "You have ordered: Pasta which comes to a total of £21 and will be delivered before #{Time.new.utc + 3600}"
			shop.send_message
		end

end