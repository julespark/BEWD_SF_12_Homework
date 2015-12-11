# create the grocery story class

class GroceryStore
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = { }
	end

	def stock_item (name, price, quantity)
		@inventory[name] = {price: price, quantity: quantity}
	end

	def view_item (name)
		puts "Safeway has #{@inventory[name][:quantity]} #{name}s for $#{@inventory[name][:price]} each"
	end

	def decrease_item (item_name, num)
		#this happens when a customer adds an item to their cart, 
		#the store now has some number less of the item!
		#example: if num = 2, the customer bought 2 items
		# update the quantity in the inventory

		#if you do the bonus, you should return the number of items the customer could buy
		#that would be either the num or the amount the store had
	end
end
