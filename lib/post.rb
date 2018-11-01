class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  def self.all
    @@all
  end
  def author_name
    if !@author.nil?
      return @author.name
    end
    nil
  end
end
