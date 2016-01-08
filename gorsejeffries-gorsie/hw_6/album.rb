require_relative "main"
=begin
need to figure out if there is a way of selecting one object randomly from an array..
also if title = ___ then play / but continue until title = ____ and when ____ has played STOP
careful of the while loops and making sure it is not infinite 

=end 

class Album 

attr_accessor (title, song_list, artist, genre)

def initialize (title, song_list, artist, genre)
	@title = title 
	@song_list = song_list
	@artist = artist
	@genre = genre

	#properties: (title, song_list, artist, genre)

	def play ()
	@song_list.play each do |song|
	puts "playing song: #{song}"	#CODE HERE
	end

	def shuffle ()
	@song_list.shiffle each do |song|
		puts "playing song: #{song}" #CODE HERE 
	end

end

def buy_album 
	puts "Do you want to buy #{title}?"
	answer = gets.chomp
	if answer = "yes"
		puts "great thanks for buying #{title}!"
	elsif answer ="no"
		puts "bummer...!"
	end

end

def add_song (title)
	@song_list 


end 

def remove_song
	@song_list.delete (title)
end 




