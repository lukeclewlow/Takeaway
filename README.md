#Takeaway

###Makers Challenge Week 2

###Brief

* Write a Takeaway program. 
* Implement the following functionality:
  * list of dishes with prices
  * placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
  * The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
  * Use twilio-ruby gem to access the API
  * Use a Gemfile to manage your gems
  
  
###My Approach

I would like to implement a system whereby the restaurant owner is able to modify menu and prices. 

The customer should be able to add and remove items to their basket and finalize their order which should send the order to the shop.

The shop should then be able to check the price is as expected and if so text the customer to let them know their order was successful.

####Shop
====

Responsibilities     | Collaborators 
---------------      | -------------
Have menu            | Customer 
Create text message  | Customer
                     | Message
                     

####Menu
====

Responsibilities     | Collaborators 
---------------      | -------------
List dishes          | Customer
Add dishes           | Customer
Remove dishes        | Customer


####Customer
=======

Responsibilities     | Collaborators 
---------------      | -------------
Place order          | Shop
Recieve message      | Shop
                     | Message




