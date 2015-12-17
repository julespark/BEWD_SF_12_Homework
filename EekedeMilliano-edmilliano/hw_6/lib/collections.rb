class Collection
	attr_accessor :title, :song_list, :artist, :genre

	def initialize (title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
	end
	
	#properties: (title, song_list, artist, genre)

	def play ()
		@song_list.each {|name| puts "Playing song: #{name}"}
	end

	def shuffle ()
		@song_list.shuffle(random: Random.new(1))
		# Why can't I get it to puts the it in the new order?
	end

end