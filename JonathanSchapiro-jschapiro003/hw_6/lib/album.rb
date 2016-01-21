class Album 
  #properties: (title, song_list, artist, genre)
  attr_accessor :title,:song_list,:artist, :genre
  def initialize(title,song_list,artist,genre)
    @title = title
    @song_list = song_list
    @artist = artist || "Unkown Artist"
    @genre = genre || "Unkown Artist"
  end

  def play ()
    @song_list.each do |song|
      puts "Playing song: #{song}"
    end
  end

  def shuffle ()
    @song_list.shuffle
    play()
  end

  def self.help 
    puts "Albums are created by artists"
  end

end

class Playlist < Album
  attr_accessor :title,:song_list
  def initialize (title,song_list)
    @title = title
    @song_list = song_list
  end

  def add_song(song)
    @song_list << song
  end

  def remove_song(song)
    @song_list.delete(song)
  end

  def self.help
    puts "Playlists are created by the user."

  end
end