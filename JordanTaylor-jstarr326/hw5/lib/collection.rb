class Collection

	 def initialize
	 end

	def play ()
		@song_list.each do |x|
			puts "playing song: #{x}"
		end

	end

	def shuffle ()
			new_song_list = []
		@song_list.each do |x|
			new_song_list.push x
		end

		new_song_list.shuffle!
		new_song_list.each do |x|
			puts "playing song: #{x}"
		end


		end

	end

=begin
Playlists can also be played and shuffled!
Hmmm should you copy-paste the code from albums??? That wouldn't be very DRY
Maybe you should make a parent class!
	Call it Collection.
	Make sure it has it's own file and make sure to add all the necessary "require_relative"
=end