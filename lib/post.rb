class Post
    
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
    author.name
    # self.author.name
  # self.author.author_name
  end
  

  
end