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

  upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
title = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(title, category)
puts "New story added! #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

stories = [] #created array
stories_detail = {} #created hash

stories << [title] #adding data to array

def store_stories(params = {})
    @title = params[:title]
    @category = params[:category]
    @upvote = params[:upvote]
end

store_stories
puts "Would you like to add another story? Enter 'y' or 'n'"
stop = get_input.to_s


while stop != "n" do
    puts "Please enter a News story:"
title = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(title, category)
puts "New story added! #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

stories = [] #created array
stories_detail = {} #created hash

stories << [title] #adding data to array

def store_stories(params = {})
    @title = params[:title]
    @category = params[:category]
    @upvote = params[:upvote]
end

store_stories
puts "Would you like to add another story? Enter 'y' or 'n'"
stop = get_input.to_s
end

#how do I check if the values I'm inputting are getting saved to my array and my hash?
