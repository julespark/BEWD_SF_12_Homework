require 'pry'

puts "How many servings of cake do you want?"

servings = gets
servings = servings.to_i


=begin
def add_flour(servings)
	cups = 2
	 return "flour" + (cups*servings).to_s
end

def add_sugar(servings)
	cups = 1
	return "sugar" + (cups*servings).to_s
end

def add_eggs(servings)
	cups = 2
	return "eggs" + (cups*servings).to_s
end

def bake_cake(servings)
	oven_on = false
	#bowl = ""

	oven_on = true

	puts "Is the oven on?" + oven_on.to_s
	
	flour = add_flour(servings)
	eggs = add_eggs(servings)
	sugar = add_sugar(servings)

	bowl = flour + eggs + sugar

	puts "The bowl currently has: " + bowl

end

bake_cake servings

=end
	
def add_ingredient(ingredient, cups, servings)
	comma = ', '
	return ingredient + (cups*servings).to_s + comma
end

def bake_cake servings
	#oven_on = false
	bowl = " "

	oven_on = 'yes'
	puts "Is the oven on? " + oven_on.to_s

	bowl += add_ingredient "flour", 2 , servings
	bowl += add_ingredient "sugar", 2 , servings
	bowl += add_ingredient "eggs", 2 , servings

	puts "The bowl currently has: " + bowl
	#puts "Did you like the cake? Please type: Yes OR no \n
	#(Our robot is still in beta, it cannot accept any other replies)"
end

bake_cake servings

#scope
 


