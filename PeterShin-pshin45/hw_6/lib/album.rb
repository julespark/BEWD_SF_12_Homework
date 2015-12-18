require_relative "collection"

class Album < Collection
	#properties: (title, song_list, artist, genre)
	attr_reader :title, :song_list, :artist, :genre
	# Without attr_accessor you get the following error: "main.rb:27:in `<main>': undefined method `genre' for #<Album:0x007f9c8b1f4378> (NoMethodError)"
	
	def initialize(title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
	end

	def play
		super
		self.buy()
	end

	# A new method to handle the buying question
	def buy
		puts "Would you like to buy this #{self.class}? (y) or (n)"
		reply = gets.chomp
		if reply == "y"
			puts "Thanks for buying #{self.title}."
		elsif reply == "n"
			puts "Ok. Maybe buy it next time."
		else
			puts "Sorry, you can only reply with 'y' or 'n'"
			self.buy()
		end
	end
	
	def self.help
		puts "#{self}s are created by an artist. And they have a genre."
	end

	def artist
		puts @artist
	end

end