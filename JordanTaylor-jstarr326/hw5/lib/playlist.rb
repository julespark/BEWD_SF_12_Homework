require_relative 'collection'
class Playlist < Collection
	attr_accessor :song_list

	def initialize(title, song_list)
		@title = title
		@song_list = song_list
	end

	def add_song(song)
		@song_list.push song
	end

	def remove_song(song)
		@song_list.delete_if {|x| x == song}

	end

	def self.help
		puts "Playlists are created by the user. You can add songs and remove them."
	end




end


=begin
Playlists can also be played and shuffled!
Hmmm should you copy-paste the code from albums??? That wouldn't be very DRY
Maybe you should make a parent class!
	Call it Collection.
	Make sure it has it's own file and make sure to add all the necessary "require_relative"
=end