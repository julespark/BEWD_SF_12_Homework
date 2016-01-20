#use this file to define a class that will represent a grocery store 

class GroceryStore
	attr_accessor :name, :inventory_item, :inventory

	def initialize (name)
		@name = name
		@inventory = {}
	end

	def stock_item (item_name, price, quantity)
	    @inventory[item_name] = { price: price, quantity: quantity }
	end
	
	def add_to_inventory(inventory, inventory_item) #adding hashes to an array
        inventory << inventory_item
    end
	
	
    def view_item(item_name)
        inventory.each do |inventory_item|
            puts "Safeway has #{inventory[:quantity]} #{inventory[:item_name]} for #{inventory[:dollars]} each"
         end
    end

	def decrease_item (item_name, num) #banana, 2
	    new_quantity = @inventory["#{tem_name}"][:quantity] - num 
		#this happens when a customer adds an item to their cart, 
		#the store now has some number less of the item!
		#example: if num = 2, the customer bought 2 items
		# update the quantity in the inventory

		#if you do the bonus, you should return the number of items the customer could buy
		#that would be either the num or the amount the store had
	end

end