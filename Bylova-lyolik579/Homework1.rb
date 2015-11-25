attempts = 2    

    puts "We're gonna play a game! Please tell me your name"
    player_name = gets
    puts "Welcome #{player_name}"
    puts "Guess a number between 1 - 10. You only have 2 attempts!"
    player_input = gets.to_i
    secret_number = 6


    def guess_check ( player_input, secret_number )    
        if player_name = secret_number
            puts "Congratulations, you've guessed the secret number! #{[secret_number]}"
            exit
        elsif player_input > secret_number
            puts "Wrong, sorry! Too high!"
        else player_input < secret_number
            puts "Wrong, sorry! Too low!"
        end
    end
        

    while attempts > 0
        guess_check( player_input, secret_number )
        attempts = attempts - 1
        if attempts <= 0
            puts "Sorry, you have no more tries"
        else
            puts "Guess the secret number (You have #{attempts} tries left):"
        end

        player_input = gets.to_i

    end

