require 'pry'

class GroceryStore 
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = {}
	end

	def stock_item (item, price, quantity)
		@inventory[item] = {price: price, quantity: quantity}
	end

	def view_item(item)
		if @inventory[item][:quantity] > 1
			newitem = item + "s"
		else
			newitem = item
		end
		puts "#{@name} has #{@inventory[item][:quantity]} #{newitem} for #{@inventory[item][:price]} dollar each"
	end

	def decrease_item (item_name, num)
	end

end
