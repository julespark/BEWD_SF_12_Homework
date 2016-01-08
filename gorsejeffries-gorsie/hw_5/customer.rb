#use this file to define a class that will represent a customer

class Customer
	attr_accessor :name, :money, :shopping_cart

	def initialize(name, money)
		@name = name
		@money = money
		@shopping_cart = shopping_cart
		@shopping_cart = {}
	end

	Jack = Customer.new ("Jack", 10, "shopping_cart")

	#do I need to create an empty cart for Jack? 

	puts "It's time to shop Jack!"

	def add_to_cart (store, item, quantity)

		shopping_cart = 

		#code here

		#make sure to update how many items are in the store
		#What should happen if the store doesn't have enough?

		#update the shopping cart to show what the customer bought. 
		#Ex: @shopping_cart = { "banana" => {price: 1, quantity: 1} }
	end

	def checkout
		#sum up the total cost of all items in the cart
		#decrease the customer's money
		#clear the shopping cart (now the items are in the customer's fridge!)
	end	



end