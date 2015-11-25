
require 'pry'

puts "Welcome to the game, young private. Tis I, Bartek. What is your name?"
player_name = gets.chomp.to_s

puts "Hi, " + player_name + "!  You have 2 guesses to guess my secret number between 1 and 10. What is your 1st guess?"



def guess_check 
	secret_number = 5
	guess_1 = gets.chomp.to_i


	if guess_1 == secret_number
		puts "you got it right"

		elsif guess_1 > secret_number
			puts "too high. Enter new guess"
			guess_2 = gets.chomp.to_i
				if guess_2 == secret_number
					puts "you got it right the 2nd time"
				else 
					puts "still wrong :(. The secret number was " + secret_number.to_s + "."
				end
		else 
			puts "too low. enter new guess"
			guess_2 = gets.chomp.to_i
				if guess_2 == secret_number
					puts "you got it right the 2nd time"
				else 
					puts "still wrong :(. The secret number was " + secret_number.to_s + "."
				end
		end
end

guess_check






# def guess_check 
# 	secret_number = 5
# 	guess_1 = gets.chomp.to_i


# 	if guess_1 == secret_number
# 		puts "you got it right"

# 		else 
# 			puts "try again. Enter new guess"
# 			guess_2 = gets.chomp.to_i
# 				if guess_2 == secret_number
# 					puts "you got it right the 2nd time"
# 				else 
# 					puts "still wrong :(. The secret number was " + secret_number.to_s + "."
# 				end
# 		end
# end

# guess_check