# Homework 1: Secret Number


require 'pry'

# Asking the player their name and explaining the rules
def welcome
	puts "Welcome! This game was created by Eeke. What is your name?"
	name = gets.chomp
	puts "Hi " + name + ". The purpose of this game is to guess a number between 1-10. You only have two tries."
end

welcome

binding.pry

# Hardcoding my number as 6
secretnumber = 6

# question: I tried to have the code read from the secretnumber above, but it keeps on returning this error:
# undefined local variable or method `secretnumber' for main:Object (NameError)
	# from hw_secret_number1.rb:66:in `<main>

# Giving the player hints if they guess above or below 6
def askuser
	puts "Alright, time to guess a number between 1-10! What's your guess?"
	number = gets.chomp.to_i
	if number == 6
		puts "Correct! Congrats for guessing the secret number, you've won!"
	# question: How do I now make clear that this is the end of the game and I don't want another input?
	elsif number > 6
		puts "Ah, not quite, try a lower number -- you have one more shot!"
	elsif number < 6
		puts "Ah, not quite, try a higher number -- you have one more shot!"
	end
	# After the first try, they only have one more shot. If they don't guess the secret number they lose the game
	number2 = gets.chomp.to_i
	if number2 == 6
		puts "yay!"
	else
		puts "Sorry, good try but you didn't guess the secret number, which was 6. The game is over"
	end

end

binding.pry

askuser
