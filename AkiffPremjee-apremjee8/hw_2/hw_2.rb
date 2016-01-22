require 'pry'

puts "Welcome to Secret Number! My name is Akiff and I made this game. What is your name?"

name = gets.chomp.capitalize!

puts "Hi #{name}!"

puts "This is how Secret Number works: You have 2 tries to guess a number between 1 and 10!"

secret_number = 5

puts "What is your first guess?"

first_guess = gets.chomp.to_i

if first_guess == secret_number #conditionals for first guess
	puts "That's correct! You win!"
elsif first_guess > secret_number
	puts "That's too high! Guess lower!"
	
	second_guess = gets.chomp.to_i

	if second_guess == secret_number #conditionals for second guess if first guess is wrong
		puts "That's correct you win!"
	else
		puts "Sorry, you lose! The Secret Number was #{secret_number}"
	end
else 
	puts "That's too low! Guess higher!"

	second_guess = gets.chomp.to_i

	if second_guess == secret_number
		puts "That's correct you win!"
	else
		puts "Sorry, you lose! The Secret Number was #{secret_number}."
	end
		
end




	