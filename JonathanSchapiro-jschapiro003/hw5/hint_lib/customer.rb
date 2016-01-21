#use this file to define a class that will represent a customer

class Customer
	attr_accessor :name, :money, :shopping_cart

	def initialize(name, money)
		@name = name
		@money = money
		@shopping_cart = {}
	end

	def add_to_cart (store, item, quantity)
		store_item = store.view_item(item)
		if store_item['quantity'] >= quantity && @money >= store_item['price'] #check if store has inventory and customer has enough money
			@shopping_cart[item] = {'price'=>store_item['price'],'quantity'=>quantity}#add to shopping cart
			store.decrease_item(item,quantity) #decrease item in inventory
			puts "Your cart looks like this #{@shopping_cart}"
		else 
			puts "The store doesn't have enough #{item}'s or you don't got da money!"
		end
		#update the shopping cart to show what the customer bought. 
		#Ex: @shopping_cart = { "banana" => {price: 1, quantity: 1} }
	end

	def checkout(store)
		#sum up the total cost of all items in the cart
		#decrease the customer's money
		#clear the shopping cart (now the items are in the customer's fridge!)
		#go through items shopping cart and charge them for the items
		total = 0
		@shopping_cart.each do |item,item_value|
			total += item_value['price']
			@money = @money - item_value['price']
		end
		puts "You have #{@money} left and spent #{total} at #{store.name}"
		@shopping_cart = {}

	end	



end