class Collection 

	attr_accessor :title, :song_list

	def initialize (title, song_list)
		@title = title
		@song_list = song_list
	end

	def play ()
		@song_list.each { |x|
			puts "Playing song: " + x 
		}
	end

	def shuffle ()
		@song_list.shuffle.each { |x|
			puts "Playing song: " + x
		}
	end

end