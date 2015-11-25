
require 'pry'

puts "Welcome to the game, young private. Tis I, Bartek. What is your name?"
player_name = gets.chomp.to_s

puts "Hi, " + player_name + "!  You have 2 guesses to guess my secret number between 1 and 10. What is your 1st guess?"

guess_1 = gets.chomp.to_i




def guess_check guess_1
	 secret_number = 5


	if guess_1 == secret_number
		puts "you got it right"

	else
		puts "you got it wrong"

	end
end

guess_check (guess_1)




# def say (something)
#       puts "They said " + something.to_s
# end

#  say ("Hello")

# => They said Hello