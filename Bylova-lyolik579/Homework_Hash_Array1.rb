require 'pry'

def get_input
  gets.strip
end


def calculate_upvotes(story)
  upvotes = 1
  title = story[:title]
  category = story[:category]

  if title.downcase.include? 'cat'
    upvotes *= 5
  elsif title.downcase.include? 'bacon'
    upvotes *= 8
  end

  if category.downcase == "food"
    upvotes *= 3
  end

  upvotes
end


puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

stories = []
stop = "y"

    puts "Please enter a News story:"
    story[:title] = get_input #is this an array or a hash?
    puts "Please give it a category:"
    story[:category] = get_input
    story[:upvotes] = calculate_upvotes(story)
    puts "New story added! #{:title}, Category: #{:category.capitalize}, Current Upvotes: #{:upvotes}"
    stories.push(story)
    puts "Would you like to add another story? Enter 'y' or 'n'"
    stop == get_input.to_s



#how do I check if the values I'm inputting are getting saved to my array and my hash?
#how do I use breakpoints properly?
#why would I use hashes if I can use a class

#Step 1. Define hash (where you are gathering the data) and then defining the hash)