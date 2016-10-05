
require 'pry'

puts "Welcome to the game, young private. Tis I, Bartek. What is your name?"
player_name = gets.chomp.to_s

puts "Hi, " + player_name + "!  You have 2 guesses to guess my secret number between 1 and 10. What is your 1st guess?"

secret_number = 5



########################################################################################
#THIS IS THE BETTER WAY TO DO THE HW BC IT IS EASIER TO READ/UNDERSTAND

def guess_check (secret_number)
	guess_1 = gets.chomp.to_i

	case 
	when guess_1 == secret_number
		puts "you got it right"

	when guess_1 > secret_number
		puts "guess lower"
		guess_check_2 (secret_number)
	else
		puts "guess higher" 
		guess_check_2 (secret_number)
	end
end


def guess_check_2 (secret_number)
	guess_2 = gets.chomp.to_i

	if guess_2 == secret_number
		puts "phew...you got it right"

	else 
		puts "you failed at this game." 
	end
end


guess_check (secret_number)

################################################################################


# THIS IS THE LESS SOPHISTICATED WAY I DID THE HW, REQUIRING 25 LINES OF CODE
# def guess_check (secret_number)
# 	guess_1 = gets.chomp.to_i

# 	if guess_1 == secret_number
# 		puts "you got it right"

# 		elsif guess_1 > secret_number
# 			puts "too high. Enter new guess"
# 			guess_2 = gets.chomp.to_i
# 				if guess_2 == secret_number
# 					puts "you got it right the 2nd time"
# 				else 
# 					puts "still wrong :(. The secret number was " + secret_number.to_s + "."
# 				end
# 		else 
# 			puts "too low. enter new guess"
# 			guess_2 = gets.chomp.to_i
# 				if guess_2 == secret_number
# 					puts "you got it right the 2nd time"
# 				else 
# 					puts "still wrong :(. The secret number was " + secret_number.to_s + "."
# 				end
# 		end
# end

# guess_check (secret_number)




