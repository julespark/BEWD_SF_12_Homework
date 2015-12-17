require 'pry'

class Playlist < Collection
	attr_accessor :playlist_name, :song_list, :song_name, :play

	def initialize (playlist_name, song_list)
	@playlist_name = playlist_name
	@song_list = song_list
	@song_name = song_name
	@play = play
	end

	def add_song (song_name)
		@song_list << song_name
	end

	def remove_song (song_name)
		@song_list.delete(song_name)
	end

	def play()
		puts "Playlists are created by the user."
		puts "You can add songs and remove them."
		## Having trouble with this instance method! What am I doing wrong? 
	end
end



