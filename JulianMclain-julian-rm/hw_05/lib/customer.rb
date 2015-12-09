# create a customer class

class Customer
	attr_accessor :name, :budget, :shopping_cart

	def initialize (name, budget)
		@name = name
		@budget = budget
		@shopping_cart = {}
	end

	def add_to_cart (store, item, quantity)
		#check store inventory to see if it has enough
		if store.inventory >
		#add to the shopping cart

		#update store inventory
	end
end