require 'pry'

class Album < Collection
	attr_accessor :title, :song_list, :artist, :genre

	def initialize (title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
	end

	def play()
		super()
		puts "Buy this album! Say (yes) if interested!"
		buy = gets.downcase.chomp
		if buy == "yes"
			puts "You just made the best decision of your life!"
		else puts "Bummer, hopefully you'll make the right decision next time."
		end
	end
	
	def self.help
		puts "Albums are created by an artist. And they have a genre."
	end 


end