class Artist
  attr_accessor :name, :song, :songs

  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
    @@song_count = @songs
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def Artist.song_count
    @@song_count
  end
  

end