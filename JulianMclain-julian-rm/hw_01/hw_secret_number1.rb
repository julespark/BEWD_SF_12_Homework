require 'pry'

# Define secret number
secret_number = 5

# Define check_guess method
def check_guess guess, secret_number
	if guess == secret_number
		puts "Congratulations! The secret number was #{secret_number}."
	elsif guess < secret_number
		puts "The secret number is greater than #{guess}"
	elsif guess > secret_number
		puts "The secret nubmer is less than #{guess}"
	end		
end

# Introduce player to game
puts "Welcome to secret number! This game was created by Julian"
puts "What's your name?"
name = gets

# Explain rules
puts "Hi #{name}, the rules of the game are simple. You'll be given 2 chances to guess the secret number. After the first guess, you will be told whether your guess was greater or less than the secret number."

# First guess
puts "What is your first guess?"
guess = gets.to_i

check_guess guess, secret_number

# Second guess
if guess != secret_number
	puts "What is your second guess?"
	guess = gets.to_i

	check_guess guess, secret_number
end

puts "Thank you for playing!"