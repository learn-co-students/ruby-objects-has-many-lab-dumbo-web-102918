require "pry"

class Author
@@all = []

 attr_accessor :name , :posts

 def initialize(name)
   @name = name
   @posts = []
   @@all << self
 end

def add_post(post)
  @posts << post
  post.author = self
end


def add_post_by_title(post_title)
  post = Post.new(post_title)
  @posts << post
  post.author = self
end


def self.post_count
  all_posts = @@all.collect do |author|
   author.posts
 end
  all_posts.flatten.count
end


end
