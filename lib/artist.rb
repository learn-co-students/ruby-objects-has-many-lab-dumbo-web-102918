class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)

  @name = name
  @songs = []
  @@all << self
end

def add_song(song)
  songs << song
  song.artist = self

end

def add_song_by_name (song_name)
  self.add_song (Song.new(song_name))
end

def self.song_count
  count = 0
  @@all.each do |artis|
    count += artis.songs.length
  end
  count
end

end
