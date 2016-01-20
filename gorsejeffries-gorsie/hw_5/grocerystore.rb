#use this file to define a class that will represent a grocery store 

class GroceryStore
	attr_accessor :name, :inventory

	def initialize (name)
		@name = name
		@inventory = {}
	end

class Stock_item
	
	attr_accessor :item_name, :price, :quantity

	def initialize (item_name, price, quantity)
		@item_name = item_name
		@price = price
		@quantity =quantity
	end

	def stock_item (item_name, price, quantity)

		inventory = {{"banana" => {price: 1, quantity: 5}, {"oatmeal" => {price: 2, quantity: 10}, {"cake" => {price: 3, quantity: 20}}}

		#add an item with a certain price to the inventory hash
		#inventory stores: item name as the key and a hash of price and quantity as the value 
		#Ex inventory = { 'banana' => {price: 1, quantity: 5},
		# 				'oatmeal' => {price: 2, quantity: 10} }
	end

	def view_item (item_name)


		@item_name.each do |price, quantity|
			puts 

			
		end

		puts "Safeway has #{quantity} #{item_name} at #{price} each"#{inventory}"
		#puts the information the inventory has about the item (price and quantity)
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