class Post
    attr_accessor :name, :posts, :author
    
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
  

  
end