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

require.pry

Puts "Hi, I'm Gorsie, welcome to my secret number game"

def 
	Puts "Please tell me your name"
	Gets player_name
	>> player_name
end

binding.pry



Puts "Hi player_name thanks for playing"

#The rules of the game etc 

Puts "The secret number is between 1 and 10"

def secret_number
	secret_number = secret_number.to_i
	>> 
end



Puts "What is your first guess?"

#ask the player to input their guess and then convert it into an integer

Gets guess
>> guess = guess.to_i



























Homework 2 secret number game
