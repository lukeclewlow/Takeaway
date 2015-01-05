require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
require './ACCOUNT_SID'
require './AUTH_TOKEN'
# require 'lib/shop.rb'

	module Message

		def create_message
			@finalized_order.keys.each { |key| p "#{key}, " }
		end
			
		def send_text	 
			@client = Twilio::REST::Client.new ACCOUNT_SID, AUTH_TOKEN

			@client.account.messages.create({
				:from => '+441442796256', 
				:to => '+447856953621', 
				:body => "You have ordered: #{create_message} which comes to a total of £#{price}",  
			})
			p "Message sent..."
		end

	end