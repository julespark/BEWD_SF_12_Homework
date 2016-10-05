require_relative 'collection'

class Playlist < Collection 

	attr_accessor :title, :song_list

	def initialize (title, song_list)
		super(title, song_list)
	end

	def add_song(song_name)
		@song_list.push(song_name)
	end

	def remove_song(song_name)
		@song_list.delete(song_name)
	end

	def self.help()
		puts "Playlists are created by the user."
		puts "You can add songs and remove them."
	end


end