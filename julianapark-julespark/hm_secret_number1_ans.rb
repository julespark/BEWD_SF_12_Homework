def guess_number (secret_number)
	puts "guess a number"

	guess = gest.chomp.to_i
	correct = false 
	if guess == secret_number
		puts "Congratulatons you guessed correctly!"
		correct = true
	elsif  guess > secret_number
		puts "Guess is too high"
	else
		puts "Guess is too low"
	end
	return correct
end

secret_number = 

if !first_guess
	second_guess = guess_number(secret_number)
	if !secret_number
		puts "The number was #{secret_number.to_s}."
	end
end
