#require "pry"
#secret = 5
#
##This is my first version of the game.
#
##Here I ask the user to provide their name.
#puts "Hello, what is your name?"
#
##On the next line we allow the user to enter their name and assign it to the variable "name".
#name = gets
#
##Now I greet them and throw in their name which they provided above.
#puts "Nice to meet you #{name}" + " !"
#
#####Now I introduce them to the game.
#puts "Please enter a number between 1 and 10. (You only get two guesses.)"
#
#####Here the user enters their guess and it is converted to a number and assigned to the variable ####"number".
#number = gets.to_i
#
#####Now is the fun part
#
#####We'll compare the user's number to the secret number.
#if number == secret
#
#####Maybe it's a match on the first try.
#	puts "Great, you got it in one!"
#
#####Maybe it's higher than the secret number.
#elsif number > secret && number != secret
#    puts "Woah, #{number} is too high buddy!"
#else
#
#####Maybe it's lower than the secret number.
#	puts "Oops, #{number} is too low... Try again."
#end
#
#####Now they try to guess again
#number = gets.to_i
##
####Maybe they get it this time
#if number == secret
#	puts "Yay! you got it this time!"
#else
####Or they lost.
#	puts "Nope. The number is #{secret}."
#end
#
#

#####Here I tried to simplify and DRY it up.
#require "pry"
#secret = 5
#puts "Hello, what is your name?"
#
#name = gets.chomp
#
#puts "Nice to meet you #{name}!"
#
#puts "This is a quick game by Jason Southwell"
#
#puts "Please enter a number between 1 and 100. (You only get 10 guesses.)"
#
#i = 0
#begin 
#    number = gets.to_i
#    if number == secret
#        puts "You guessed it right, thanks for playing!"
#        break
#    end
#    if
#        number < secret
#        puts "Sorry #{number} is too low. Please guess again."
#    end
#    if
#        number > secret && number != secret 
#        puts "Sorry, but #{number} is too high. Please guess again."
#    end
#    i += 1
#end while i <=10


####And here I got it down to the bare bones.

require "pry"

secret = 76

puts "This is a quick game by Jason Southwell"

puts "Hello, what is your name?"

name = gets.chomp

puts "Nice to meet you #{name}!"

puts "Please enter a number between 1 and 100. (You only get 10 guesses.)"

i = 0

def you_win 
    puts "Amazing! You've guessed the correct number! Thanks for playing!"
    exit
end

begin 
    number = gets.to_i
    you_win if number == secret
    puts "Sorry #{number} is too low. Please guess again." if number < secret
    puts "Sorry, but #{number} is too high. Please guess again." if number > secret 
    i += 1
end while i <=10
    
if i=10 && number != secret
    puts "Aw shucks! Wrong again and now you've used all of your guesses."
    puts "The secret number is #{secret}."
    puts "Please play again sometime!"
    exit
end



    
