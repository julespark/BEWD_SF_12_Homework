def get_input
	 gets.chomp

#chomp gets rid of the /n character
end

def calculate_upvotes(story, category)
	upvotes = 1
	
	if story.downcase.include? ("cats")
	#include is case sensitive
		upvotes *= 5
	end
	
	if story.include? "bacon"
		upvotes *= 8
	end
		
	if category.downcase == "food"
		upvotes *= 3	
	end
	
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
	story =  get_input

puts "Please give it a category:"
	category = get_input

upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
