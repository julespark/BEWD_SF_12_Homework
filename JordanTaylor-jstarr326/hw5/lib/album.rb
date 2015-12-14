
require_relative "collection"
class Album < Collection
	#properties: (title, song_list, artist, genre)


	def initialize(title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
	end

	def title
		@title
	end

	def song_list
		@song_list
	end

	def artist
		@artist
	end

	def genre
		@genre
	end

	def play
		super
		puts "would you like to buy the album? enter y or n"
		answer = gets.chomp
		if answer == 'y'
			puts "Cool that'll be 10 bucks"
		else
			puts "good call use spotify"
		end
	end

	def self.help
		puts "albums are created by an artist. And they have a genre"
	end


end
#Add a class method to albums that explains to users about albums.
# => "Albums are created by an artist. And they have a genre."
