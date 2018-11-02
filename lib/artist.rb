require 'pry'

class Artist
  attr_accessor :name, :songs
  @@songs = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
    # When this method is called, the song needs to know which class it belongs to as well.
    # song.artist tells the song who it belongs to, and self indicates that it belongs to
    # the artist which called the method add_song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs.push(song)
    @@songs.push(song)
    song.artist = self
  end

  # Above failed multiple times prior due to song.rb having a wrong attr_accessor
  # which is strictly checked by rspec.

  #adele.add_song(SONG OBJECT)
  #jayz.add_song_by_name(SONG OBJECT)

  def self.song_count
    @@songs.length
  end

# Method self.song_count only worked after creating a class variable for songs,
# after I changed the earlier, same iteration into an instance variable. Both
# are listed within the artist.rb, but there's probably a better way.

end
