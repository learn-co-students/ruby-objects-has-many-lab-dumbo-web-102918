class Author
  attr_accessor :name , :posts
  
  def initialize(name)
    # @author_name = name
    @posts = []
  end
  
  def add_post(post)
    post.author = self
    @posts << post
  end
  
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
  end
  
  def Author.post_count
  end
  
end