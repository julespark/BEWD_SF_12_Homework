class Collection

	attr_accessor :title, :song_list
	# Without attr_accessor you get the following error: "main.rb:24:in `<main>': undefined method `genre' for #<Album:0x007f9c8b1f4378> (NoMethodError)"
	
	def initialize(title, song_list)
		@title = title
		@song_list = song_list
	end

	# Added "from #{self.class}" to distinguish display method for albums and playlists
	def play
		#CODE HERE
		@song_list.each do |song|
		# Question for Sandi/Christine about song_list vs @song_list - both work but which is "correct"?
			puts "Playing song from #{self.class}: #{song}"
		end
	end

	# Added "from #{self.class}" to distinguish display method for albums and playlists
	def shuffle
		#CODE HERE
		@song_list.shuffle.each do |song|
			puts "Playing song from #{self.class}: #{song}"
		end
	end

end