# create the grocery story class

class GroceryStore
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = { }
	end

	def stock_item (name, price, quantity)
		inventory[name] = {'price' => price, 'quantity' => quantity}
	end

	def view_item (name)
		#how to access the fields of the nested hashes?
		puts "Safeway has #{inventory[name]} for #{inventory[name]} each"
	end
end
