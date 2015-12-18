require_relative "collections"

class Album < Collections
	#properties: (title, song_list, artist, genre)
	attr_accessor :title, :song_list, :artist, :genre

	def initialize (title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
	end

	def play ()
		# Edit album to ask the user (remember gets?) if they want to buy the album after they listen to it.
		# Based on the user's answer print a message (see example).
		
		super()
		# the loop never ends
		response = ""
		while response != "y" || response != "n"
			puts "Would you like to buy this album? (y) or (n)"
			response = gets.chomp.to_s
			if response == "y"
				puts "Thanks for buying #{@title}."
			elsif response == "n"
				puts "Ok. Maybe buy it next time."
			else
				puts "Sorry, I didn't catch your response."
			end
			binding.pry
		end
	end

	def self.help
		puts "Albums are created by an artist. And they have a genre."
	end
end