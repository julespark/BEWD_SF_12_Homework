#use this file to define a class that will represent a customer

class Customer
	attr_accessor :name, :money, :shopping_cart

	def initialize(name, money)
		@name = name
		@money = money
		@shopping_cart = {}
	end

	def add_to_cart (store, item, quantity)
		if store.inventory[item][:quantity] > 0
			@shopping_cart[item] = {price: store.inventory[item][:price], quantity: quantity}
			store.inventory[item][:quantity] -= 1
			puts "Jack added 1 #{item} to his cart. Here is his shopping cart:"
			puts @shopping_cart
		else
			puts "No more #{item}!"
		end

	end

	def checkout(store)
		money_spent = @shopping_cart.inject(0) { |i, p| i + p.last[:price].to_i}
		@money -= money_spent
		@shopping_cart.clear
		puts "#{@name} spent #{money_spent} dollars at store"
	end
# => "Jack spent $4 at Safeway"
#remember to decrease jack's money (since he spent it) and also clear Jack's cart.


end