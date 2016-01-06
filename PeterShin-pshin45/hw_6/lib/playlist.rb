require_relative "collection"

class Playlist < Collection
	
	def add_song(song_title) # takes a string
		self.song_list << song_title
	end

	def remove_song(song_title) # takes a string
		self.song_list.delete(song_title)
	end

	def self.help
		puts "#{self}s are created by the user."
		puts "You can add songs and remove them."
	end

end