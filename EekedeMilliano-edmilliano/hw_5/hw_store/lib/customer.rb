require 'pry'

class Customer < GroceryStore
	attr_accessor :name, :wallet, :shopping_cart

	def initialize (name, wallet)
		@name = name
		@wallet = wallet
		@shopping_cart = {}
	end


	def add_to_cart (store, item, quantity)
		if store.inventory["#{item}]"[:quantity] > quantity
			@shopping_cart[item] = {price: store.inventory["#{item}"][:price], quantity: quantity}
			#store.decrease_item(item, quantity)
		else 
		puts "We're sold out of #{item}"
		# need to find a way to get the price in there, maybe using super? 
		end
	end

	def checkout (store)
		amount = []
		@shopping_cart.each_value do |value|
			amount.push(item_amount = value[:price] * value[:quantity])
		end
		amount.reduce
 
		# hash method that does loops 
		# How do I do this?
		# need to add ifstatement on checking the wallet amount
		puts "#{@name} spent #{newallet} at #{store}"
		# How to clear the cart? 
	end
end