require 'pry'


=begin

players guess number from 1-10
Intros
# 	-	Welcome the player to your game. Let them know who created the game.
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10
#		and that they only have 2 tries to do so.

=end

puts "Welcome to Jordan Taylor's Secret Game!"
puts "What is your  name?"
name = gets.chomp
puts "Hi #{name}!"
puts "Here are the rules. You must guess a number between 1 and 10. You will only have two tries!"

secret = rand(1..100)
tries = 0
puts "Go ahead, what is your guess?"
guess = gets.chomp.to_i


while guess != secret && tries <10

	if guess > secret
		tries += 1
		puts "You guess too high, try again!"
		guess = gets.chomp.to_i

	elsif guess < secret
		tries += 1
		puts "You guess too low, try again!"
		guess = gets.chomp.to_i
	end
end

if guess != secret && tries == 10
	puts "You ran out of guesses. The number was four"
end

if guess == secret
	puts "you win!"
end


























