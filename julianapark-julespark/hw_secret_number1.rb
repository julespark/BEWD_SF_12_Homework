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

require 'pry'

puts "10 9 8 7 6 5 4 3 2 1. Welcome to Secret Number. It's the game you've been waiting for. 
This has been created by yours truly, Jules Park. Please enter your name."

player_name = gets

puts "Hello " + player_name + "! The goal of this game is to unravel the secret. 
Guess the correct number between 1 and 10. You have two chances."



puts "Guess the correct number between 1 and 10. You have two chances. Enter in your number here:"
	guess = gets
	guess = guess.to_i



def play_game(player_name, guess)

		if guess > 2
			puts "A little too high...Take another guess:"
			guess = gets
			guess = guess.to_i

		elsif guess < 2	
			puts "Almost, but not quite... Take another guess:"
			guess = gets
			guess = guess.to_i
		else
			puts "Winner winner chicken dinner. Two is indeed the secret number."
		end

end

play_game(player_name, guess)








