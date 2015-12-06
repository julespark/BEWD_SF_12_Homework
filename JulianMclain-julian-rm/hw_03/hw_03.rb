# Step 1: Working with Arrays and Hashes

# Create an empty stories array. This will be used to hold all stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story (upvotes, category and title) 
# Your story hash should look like the one below: 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add the hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Using the stories array 
# Test your cat, bacon, and food upvote conditional logic.
#
# Step 2: Adding Loops 
# Use a loop, so that your program continues to ask a user for stories until they chose to quit. ("Would you like to add another story? Enter 'y' or 'n'")
# Once the user is finished with entering their stories, use .each to print each story in the stories array. 
#
#
require 'pry'

def get_input
  gets.strip
end

def calculate_upvotes(title, category)
  upvotes = 1
  if title.downcase.include? 'cat'
    upvotes *= 5
  elsif title.downcase.include? 'bacon'
    upvotes *= 8
  end
  if category.downcase == "food"
    upvotes *= 3
  end
  return upvotes
end

def create_story(title, category, upvotes)
  story = {title: title, category: category, upvotes: upvotes}
  return story
end

def get_news()
  # get title
  puts "Please enter a News title:"
  title = get_input.to_s
  
  # get category
  puts "Please give it a category:"
  category = get_input.to_s
  
  # calculate upvotes
  upvotes = calculate_upvotes(title, category)
  
  # create story
  story = create_story(title, category, upvotes)
  puts "New story added! #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
  
  return story
end

def return_news(stories)
    stories.each do |i|
      puts "Title = #{i[:title]}, category = #{i[:category]}, upvotes = #{i[:upvotes]}"
  end
end

continue = true
stories = []
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

while continue == true
  # ask to continue
  puts "Would you like to add a story? Enter 'y' or 'n'"
  if gets.chomp == "y"
    stories << get_news()
  else
    continue = false
  end
end

return_news(stories)

 

