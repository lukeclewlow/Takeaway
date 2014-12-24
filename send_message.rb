require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
 
# put your own credentials here 
account_sid = 'AC5a201b62fd6c321fd2c552df32896e27' 
auth_token = '[AuthToken]' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({
	:from => '+441442796256', 
	:to => '+447856953621', 
	:body => 'You have ordered: _________ which comes to a total of &#163;______',  
})