class Playlist < ::Album

	def initialize (title, song_list)
		@title = title
		@song_list = song_list

	end
end



#instead of adding another class for album add it as a 'parent' of the class Playlist
#so if it has play it should also contain shuffle 
