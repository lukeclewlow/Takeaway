#Takeaway

###Makers Challenge Week 2

##What is it? 
A program for providing a takeaway service

##Objectives?
* Furthering understanding of class encapsulation and the SOLID principles
* Learning to interact with external API's - in this case Twilio 
* Learning to use Gemfile

###To run tests:
```
rspec
```

##Brief

##Technologies
* Ruby
* RSpec

###Brief

* Write a Takeaway program. 
* Implement the following functionality:
  * list of dishes with prices
  * placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
  * The text sending functionality should be implemented using Twilio API.
  * Use twilio-ruby gem to access the API
  * Use a Gemfile to manage your gems
  
  
###My Approach

I would like to implement a system whereby the restaurant owner is able to modify menu and prices. 

The customer should be able to add and remove items to their basket and finalize their order which should send the order to the shop.

The shop should then be able to check the price is as expected and if so text the customer to let them know their order was successful.

##Contributors
[Luke Clewlow](https://github.com/lukeclewlow)  


