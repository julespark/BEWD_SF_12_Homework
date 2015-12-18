class Album
	#properties: (title, song_list, artist, genre)
	attr_accessor :title, :song_list, :artist, :genre
	def initialize(title, song_list, artist, genre)
		@title = title
		@song_list = song_list
		@artist = artist
		@genre = genre
	end


	def play
		@song_list.each do |song|
			puts "Playing song: #{song}"
		end
		buy_album
	end

	def shuffle
		@song_list.shuffle.each do |song|
			puts "Playing song: #{song}"
		end
		#CODE HERE
	end

	def add_song(song_title)
		@song_list.push(song_title)
	end

	def remove_song(song_title)
		@song_list.delete(song_title)
	end

	def buy_album
		puts "Do you want to buy #{title}?"
		answer = gets.chomp
		if answer == "yes"
			puts "Great Thanks for buying #{title}!"
		else
			puts "Bummer..."
		end
	end

end
