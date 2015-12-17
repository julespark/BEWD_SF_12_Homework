require_relative 'collection'

class Album < Collection 
	#properties: (title, song_list, artist, genre)

	attr_accessor :title, :song_list, :artist, :genre

	def initialize (title, song_list, artist, genre)
		super(title, song_list)
		@artist = artist
		@genre = genre
	end

	def play ()
		super()
		puts "Would you like to buy this album? (y) or (n)"
		answer = gets.chomp
		if answer == 'y'
			puts "Thanks for buying this " + @title + '.'
		else
			puts "Ok. Maybe buy it next time."
		end
	end

	def self.help()
		puts "Albums are created by an artist. And they have a genre."
	end

end