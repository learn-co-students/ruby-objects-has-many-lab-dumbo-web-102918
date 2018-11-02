class Song
  attr_accessor :name, :artist
  # attr_accessor allows get/set for name and artist

  @@all = []
  # class variable, everything within initialize will pass into this array
  def initialize(name)
    # All new instances of song will require an argument of it's name
    @name = name
    @artist = artist
    #initializers above alow each instance to get/set these parameters
    @@all << self
    # everything gets shoveled into above class method / empty array
  end

  def self.all
    @@all
    # self.all calls on the class variable to display array contents.
  end

  def artist_name
    if artist
      artist.name
    else
      NIL
    end

    # calls on name set within song parameter for artist, through artist.rb
    # Unsure of how to get method to return Nil if artist unknown, Rspec acting up?
  end

end
