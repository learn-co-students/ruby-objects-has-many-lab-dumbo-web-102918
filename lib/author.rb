class Author
  attr_accessor :name
  # set / get for name of Author class
  @@posts = []
  # All posts made by instanes of Author get stored within this class variable
  def initialize(name)
    # all Author instances require a name argument to be created
    @name = name
    @posts = []
    # name allows all name arguments to be saved as an instance. All posts also
    # get placed within the posts array
  end

  def posts
    @posts
    #returns all instances of posts from the initialize method
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
    # add_post pushes the post argument into the inst. variable and class variable
    # post.author = self : Allows added post to know it belongs to the author who
    # called the method.
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    @posts << new_post
    @@posts << new_post
    # new_post is a new instance of the post class, passed a :name argument of title
    # new_post gets pushed into inst. and class variable posts
    new_post.author = self
    # allows the new post to recognize that it's owned by the author who called it.
  end

  def self.post_count
    @@posts.length
    # calls on the class posts variable to display the amount of posts ever created
    # through the class.
  end

end
