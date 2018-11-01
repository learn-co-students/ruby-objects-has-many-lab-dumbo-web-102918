class Artist
  attr_accessor :name, :song, :songs

  @@song_count = []
  
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
    Song.all.select do |song|
      if song.artist == self
      
    end
    @songs
  end
  
  def Artist.song_count
    Song.all.each do |song|
       count += 1 if song.artist == self
       
    end
    @@song_count.size
  end
  

end