require 'menu'

describe Menu do

	let(:menu) {Menu.new}

	it 'should be able to hold a list with at least one item and its price' do
		expect(menu.listing_count).to eq(3)
	end

	it 'should be able to return a price when given an item' do
		expect(menu.price?(:Pasta)).to eq(7)
	end

	it 'should be able to be added to' do
		
		expect{menu.add_or_modify_item(:Salmon, 15)}.to change{menu.listing_count}.by 1
	end

	it 'should be able to have an item removed' do
		expect{menu.remove_item(:Pasta)}.to change{menu.listing_count}.by -1
	end

	it 'should be able to modify prices' do
		expect{menu.add_or_modify_item(:Pasta, 4)}.to change{menu.price?(:Pasta)}.by -3
	end

	it 'should be able to return item and price for addition to baskets' do
		expect(menu.add_to_basket(:Pasta, 2)).to eq(:Pasta)
	end

end