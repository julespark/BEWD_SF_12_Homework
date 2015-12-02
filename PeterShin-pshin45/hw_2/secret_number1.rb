# Greet user and ask them their name
puts "Hello, and welcome to Secret Number! This game is brought to you by Peter Shin"
puts "By the way, what's your (first) name?"
name = gets.capitalize

# Set answer and parameters for difficulty of the game in terms of number range and number of tries.
lower_bound = 1
upper_bound = 100
answer = 45
attempts = 10

# Opening prompt and get user's first guess
puts "Hi " + name.chomp + "! I'm thinking of a number between " + lower_bound.to_s + " and " + upper_bound.to_s + " inclusive. I'll give you up to " + attempts.to_s + " tries to guess it correctly."
guess = gets.to_i

def evaluate (guess, answer, attempts, lower_bound, upper_bound)
	if guess < lower_bound || guess > upper_bound
		puts "You have to choose a number between " + lower_bound.to_s + " and " + upper_bound.to_s + " inclusive."
		guess = gets.to_i
		evaluate(guess, answer, attempts, lower_bound, upper_bound)
	else 
		if guess > answer
			attempts -= 1
				if attempts == 0
					puts "Sorry, you have no more guesses left. The correct answer was " + answer.to_s + "."
				else
					puts "Sorry, too high! Try again. You have " + attempts.to_s + " guesses left."
					guess = gets.to_i
					evaluate(guess, answer, attempts, lower_bound, upper_bound)
			end
		elsif guess < answer
			attempts -= 1
				if attempts == 0
					puts "Sorry, you have no more guesses left. The correct answer was " + answer.to_s + "."
				else
					puts "Sorry, too low! Try again. You have " + attempts.to_s + " guesses left."
					guess = gets.to_i
					evaluate(guess, answer, attempts, lower_bound, upper_bound)
				end
		else puts "Winner, winner, chicken dinner!"
		end
	end
end

# Call method
evaluate(guess, answer, attempts, lower_bound, upper_bound)


=begin

# This was my original code for version of game with 2 attempts, before I did the bonus challenge above

puts "Hello, and welcome to Secret Number! This game is brought to you by Peter Shin"
puts "By the way, what's your (first) name?"
name = gets.capitalize

puts "Hi " + name.chomp + "! I'm thinking of a number between 1 and 10 inclusive. I'll give you up to 2 tries to guess it correctly."
guess = gets.to_i

answer = 7

def guesses (guess, answer)
	if guess > answer
		puts "Sorry, too high! The correct number was " + answer.to_s
	elsif guess < answer
		puts "Sorry, too low! The correct number was " + answer.to_s
	else puts "Winner, winner, chicken dinner!"
	end
end

if guess > answer
	puts "Sorry, too high! Try again."
	guess = gets.to_i
	guesses(guess, answer)
elsif guess < answer
	puts "Sorry, too low! Try again."
	guess = gets.to_i
	guesses(guess, answer)
else puts "Winner, winner, chicken dinner!"
end

=end


###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 2 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 -	If they don't guess correctly after 2 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
#   Advice:
#    - First try to write this if the player only has 1 try to guess.
#    - Think about what parts of the code would make sense to collect into a method. 
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
#
# Bonus: if you have some programming background, try this exercise but give the player 10 tries to  
# guess a number between 1 and 100.
#
###############################################################################


=begin
More advice:
Use pry for debugging!
At the top of this file, remember to have the line "require 'pry' "
Breakpoints (places to stop) are written like this: binding.pry
Press Ctrl-D to continue past the breakpoint
=end