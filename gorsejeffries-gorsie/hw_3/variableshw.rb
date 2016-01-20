require "pry"

puts "Hi my name is Gorsie, let's play the secret number game!"
puts "Please tell me your name"

#get the player to input their name and use it throughout the rest of the game

name = gets.to_s

puts "Hello!"

def secret_number
	secret_number = gets.to_i
	secret_number = 8
end

puts "To win the secret number game you must correctly guess the secret number between 1 and 10. What's your guess?"

binding "pry"

#next I meed to define a method to get the players guess and see if it matches the secret number 
guess = gets.to_i

def winner
	if secret_number = guess
		secret_number.to_i = guess.to_i
		puts "winner"
	elsif secret_number.to_i != guess.to_i
		puts "loser"
	end

end













