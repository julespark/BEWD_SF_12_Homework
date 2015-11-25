
require 'pry'

puts "Welcome to the game, young private. Tis I, Bartek. What is your name?"
player_name = gets.chomp.to_s

puts "Hi, " + player_name + "!  You have 2 guesses to guess my secret number between 1 and 10. What is your 1st guess?"



def guess_check 
	secret_number = 5
	guess_1 = gets.chomp.to_i


	if guess_1 == secret_number
		puts "you got it right"

		else 
			puts "try again. Enter new guess"
			guess_2 = gets.chomp.to_i
				if guess_2 == secret_number
					puts "you got it right the 2nd time"
				else 
					puts "still wrong :(. The secret number was " + secret_number.to_s + "."
				end
		end
end

guess_check





# 	els
# 		guess_1 > secret_number
# 		puts "you got it wrong, guess lower"
		
# 			guess_2 = gets.chomp.to_i
# 			if guess_2 == secret_number
# 				puts "you got it right (finally, what took you so long?)" 
# 			else puts "you got it wrong, mofo. Game over"
# 	else
# 		puts "you got it wrong, guess higher"
# 			guess_2 = gets.chomp.to_i
# 			if guess_2 == secret_number
# 				puts "you got it right (finally, what took you so long?)" 
# 			else puts "you got it wrong, mofo. Game over"
# 	end
# end




# def guess_check_2 guess_2
# 	 secret_number = 5
# 	if guess_2 == secret_number
# 		puts "you got it right (finally, what took you so long?)"

# 	else
# 		puts "you got it wrong, mofo. Game over"
# 	end
# end




# if guess check 1 matches, end, ifelse, run guess check 2



