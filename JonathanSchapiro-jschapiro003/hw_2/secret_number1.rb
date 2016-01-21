=begin 
	Secret Number 1
	Jonathan Schapiro
	Homework 2
=end

require 'pry'

def secretNumberGame 
	
	puts "Welcome to Jonathan Schapiro's Secret Number Game!"

	#get players name
	puts "What's your name?"
	playerName = gets.chomp 
		

	#greet player
	puts "Hi #{playerName}!"

	#print rules
	puts "You must guess a number between 1 and 10 and you only have 2 tries to do so."

	#assign secret number
	secretNumber = rand(0..10)
	numberOfGuesses = 1

	#game logic
	while numberOfGuesses <= 2
		puts "What's your guess?"
		guess = gets.to_i

		if guess == secretNumber
			return "You win!"
		else
			puts "Sorry, #{guess} is not correct. Guess again..."
			numberOfGuesses += 1
		end

	end


	puts "Sorry the correct answer was #{secretNumber} maybe next time"

end

secretNumberGame



