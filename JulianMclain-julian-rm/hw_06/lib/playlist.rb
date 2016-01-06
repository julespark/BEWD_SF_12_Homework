require_relative "collections"

class Playlist < Collections
	attr_accessor :title, :song_list

	def initialize (title, song_list)
		@title = title
		@song_list = song_list
	end

	def add_song (title)
		song_list.push(title)
	end

	def remove_song (title)
		song_list.delete(title)
	end

	def self.help
		puts "Playlists are created by the user."
		puts "You can add songs and remove them."
	end
end
