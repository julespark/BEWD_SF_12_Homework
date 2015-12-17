#use this file to define a class that will represent a customer

class Customer
	attr_accessor :name, :money, :shopping_cart

	def initialize(name, money)
		#code here
		@name = name
		@money = money
		@shopping_cart = {}
	end

	def add_to_cart (store, item, quantity)
		#code here
		if store.inventory[item][:quantity] < quantity
			puts "Sorry, #{store.name} doesn't have that many #{item}s in stock."
		else
			@shopping_cart[item] = { price: store.inventory[item][:price], quantity: quantity } #ask why store.inventory works
			puts "#{@name} added #{quantity} #{item}s to his cart. Here is his shopping cart:"
			puts "#{@shopping_cart}"
			store.inventory[item][:quantity] -= quantity
		end

		#make sure to update how many items are in the store
		#What should happen if the store doesn't have enough?

		#update the shopping cart to show what the customer bought. 
		#Ex: @shopping_cart = { "banana" => {price: 1, quantity: 1} }
	end

	def checkout (store)
		#sum up the total cost of all items in the cart
		total_cost = 0
		
		# Question for Sandi/Christine - I noticed that @shopping_cart and shopping_cart both work here. Which is "better"?
		shopping_cart.each do |item, details|
			sub_cost = shopping_cart[item][:price] * shopping_cart[item][:quantity]
			if @money < sub_cost
				puts "Insufficient Funds. Your shopping cart has been cleared."
				@shopping_cart = {}
			else
				total_cost += sub_cost
			end
		end
		
		puts "#{@name} spent $#{total_cost} at #{store.name}"

		#decrease the customer's money
		@money -= total_cost

		#clear the shopping cart (now the items are in the customer's fridge!)
		@shopping_cart = {}
	end
end