require 'pry'
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

def get_input
  gets.strip
end

def show_message(message)
  puts message
end

def show_new_story_notification(title, category, upvotes)
  show_message("New story added: #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end

def show_story(story)
  show_message("Story: #{story[:title]}, Category: #{story[:category]}, Current Upvotes: #{story[:upvotes]}")
end

def calculate_upvotes(story_hash)
  story_hash[:upvotes] = 1

  if story_hash[:title].downcase.include? 'cat'
    story_hash[:upvotes] *= 5
  elsif story_hash[:title].downcase.include? 'bacon'
    story_hash[:upvotes] *= 8
  end

  if story_hash[:category].downcase == "food"
    story_hash[:upvotes] *= 3
  end

  story_hash[:upvotes]
end

stories = []
story = {}


puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story[:title] = get_input
puts "Please give it a category:"
story[:category] = get_input
calculate_upvotes(story)
show_new_story_notification(story[:title], story[:category], story[:upvotes])
stories << story
puts "Would you like to add another story? Enter 'y' or 'n'"
stories.each {|s| show_story s}





