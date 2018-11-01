class Post

  attr_accessor :title, :author, :name

  @@all =[]

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author ? self.author.name : nil 
  end


end
