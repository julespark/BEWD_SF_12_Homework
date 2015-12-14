class Collections
	attr_accessor :title, :song_list

	def play ()
	# write a method that puts the name of each song to the terminal
		song_list.each do |i|
				puts "Playing song: #{i}"
		end
	end

	def shuffle ()
	# write a method that randomizes the song_list and puts the name of each song to the terminal
	# make sure it doesn't permanently change the array
		song_list.shuffle.each do |i|
				puts "Playing song: #{i}"
		end
	end
end