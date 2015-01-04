require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
# require 'lib/shop.rb'

	module Message

		def create_message
			message = @finalized_order.keys.each do |key| print "#{key}, "
			end
		end
			
		def send_text	 
			@client = Twilio::REST::Client.new 'AC5a201b62fd6c321fd2c552df32896e27' , 'a874b2a3a986714f11f4b424192852f0'

			@client.account.messages.create({
				:from => '+441442796256', 
				:to => '+447856953621', 
				:body => "You have ordered: _________ which comes to a total of &#163;______",  
			})
			p "Message sent..."
		end

	end