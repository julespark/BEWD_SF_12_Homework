require 'pry'

puts "Welcome to Secret Number! My name is Akiff and I made this game. What is your name?"

name = gets.chomp.capitalize!

puts "Hi #{name}!"

puts "This is how Secret Number works: You have 10 tries to guess a number between 1 and 100!"

puts "What is your first guess?"

$counter = 0 #global counter variable to record number of tries

def game #method for the whole game -- checks counter and also checks guess
	secret_number = 73
	if $counter < 10
		guess = gets.chomp.to_i
		if guess == secret_number
			puts "Congrats, you win!"
		elsif guess > secret_number
			$counter += 1
			puts "That's too high! Guess lower!"
			game
		else
			$counter += 1
			puts "That's too low! Guess higher!"
			game
		end
	else
		puts "Sorry, you ran out of tries. The Secret Number was #{secret_number}"
	end
end

game
			