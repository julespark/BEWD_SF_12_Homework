#use this file to define a class that will represent a grocery store 

class GroceryStore
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = {}
	end

	def stock_item (item_name, price, quantity)
		#add an item with a certain price to the inventory hash
		#inventory stores: item name as the key and a hash of price and quantity as the value 
		#Ex inventory = { 'banana' => {price: 1, quantity: 5},
		# 				'oatmeal' => {price: 2, quantity: 10} }
		@inventory[item_name] = {'price'=>price,'quantity'=>quantity}
	end

	def view_item (item_name)
		#puts the information the inventory has about the item (price and quantity)
		puts "item: #{item_name}"
		puts "price: #{@inventory[item_name]['price']}"
		puts "quantity: #{@inventory[item_name]['quantity']}"
		@inventory[item_name]
	end

	def decrease_item (item_name, num)
		#this happens when a customer adds an item to their cart, 
		#the store now has some number less of the item!
		#example: if num = 2, the customer bought 2 items
		# update the quantity in the inventory
		if @inventory[item_name]['quantity'] - num >= 0
			@inventory[item_name]['quantity'] = @inventory[item_name]['quantity'] - num
		else 
			puts "Sorry, you can't remove that many #{item_name}'s" 
		end
		#if you do the bonus, you should return the number of items the customer could buy
		#that would be either the num or the amount the store had
	end

	
end