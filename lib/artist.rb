class Artist
  @@all = []
  attr_accessor :name, :songs
  # songs need an attr_accessor because we have to add songs to it hence modify it
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    # must add the artist created to @@all array
  end

  def add_song(song)
    self.songs << song
    # self.songs goes into the array for the new artist object created
    song.artist = self
  end

  def add_song_by_name(name)

    song = Song.new(name)
    song.artist = self
    self.songs << song
    # have to add the newly created song_by_name to the newly created artist object`s
    # songs array.
  end
  def self.song_count
    Song.all.count
    # this is counting the songs that are compiled in the @@all array in the
    # Song class because its asking for all the songs ever created, not just the ones
    # created by one artist
    # the self in self.song_count reffers to the class artist not an individual artist
  end
end
