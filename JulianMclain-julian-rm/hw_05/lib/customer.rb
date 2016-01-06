# create a customer class
class Customer
	attr_accessor :name, :budget, :shopping_cart

	def initialize (name, budget)
		@name = name
		@budget = budget
		@shopping_cart = {}
	end

	def add_to_cart (store, item, q)
		#check store inventory to see if it has enough
		#if store.inventory > quantity
		#	shopping_cart[item] => 
		#add to the shopping cart

		# line 17 causes unidentified method error
		if store.inventory[item][:quantity] > q
		 	shopping_cart[item] = {price: store.inventory[item][:price], quantity: q}
		end
		
		#update store inventory
		#line 24 causes unidentified method error
		store.inventory[item][:quantity] -= q
	end

	def checkout (store)
		# calcualte total in cart
		total = 0
		#{"banana"=>{:price=>1, :quantity=>4}}
		@shoppping_cart.each |item, value| do
			puts key
		 	total += value[:price] * value[:quantity]
		end
		if @budget > total
		# put to terminal
		puts "#{name} spent #{total} at #{store}."
		# update budget
		budget -= total
		else
		# put to terminal
		puts "Insufficient Funds. Your shopping cart has been cleared."
		end
		# clear cart
		@shopping_cart = {}
	end
end