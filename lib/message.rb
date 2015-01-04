require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
# require 'lib/shop.rb'

	module Message

		def create_message
			@finalized_order.keys.each { |key| p "#{key}, " }
		end
			
		def send_text	 
			@client = Twilio::REST::Client.new 'AC5a201b62fd6c321fd2c552df32896e27' , 'a874b2a3a986714f11f4b424192852f0'

			@client.account.messages.create({
				:from => '+441442796256', 
				:to => '+447856953621', 
				:body => "You have ordered: #{create_message} which comes to a total of £#{price}",  
			})
			p "Message sent..."
		end

	end