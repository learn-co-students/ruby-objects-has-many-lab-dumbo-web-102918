class Artist
  @@all = []
  attr_accessor :name, :songs
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end
  def add_song_by_name(name)

    song = Song.new(name)
    song.artist = self
    self.songs << song
  end
  def self.song_count
    Song.all.count
  end
end
