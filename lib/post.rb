require "pry"
class Post
    attr_accessor :name, :author
    
    @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def Post.all
    @@all
  end
  
  def title
    self.name
  end
  
  def author_name
    self.author.name
  end
  
  def Post.count
    @@all.size
  
  end
end