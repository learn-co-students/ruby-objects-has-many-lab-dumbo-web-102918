class Author
  @@all = []
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end
  def add_post_by_title(title)

    post = Post.new(title)
    post.author = self
    self.posts << post
  end
  def self.post_count
    Post.all.count
  end
end
