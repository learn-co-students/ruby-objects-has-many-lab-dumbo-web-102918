require "pry"
class Post
    attr_accessor :name, :author
    
    @@all = []
    @@count = 0
  
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
  end
  
  def Post.all
    @@all
  end
  
  def title
    self.name
  end
  
  def author_name
    author.name
    # self.author.name
  # self.author.author_name
  end
  
  def Post.count
    @@count
  end
  

  
end