# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  gets.chomp
end

def calculate_upvotes(story, category)
	upvotes = 1
	# If the Story has the word 'cat' multiply the upvotes by 5
	if story.downcase.include? 'cat'
		upvotes *= 5
	# If the Story has the word 'bacon' multiply the upvotes by 8
	elsif story.downcase.include? 'cats'
	elsif story.downcase.include? 'bacon'
		upvotes *= 8
	end

# If the Story's category is 'food' it gets 3 times the upvotes.
	if category.downcase.include? 'food'
	upvotes *= 3
	end 
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"