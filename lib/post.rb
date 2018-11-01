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
    if self.author.name == nil
      return nil
    else
      return self.author.name
    end
  end
  

  
end