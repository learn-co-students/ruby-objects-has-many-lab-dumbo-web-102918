class Post
  attr_accessor :title, :author, :name
  # get / set for title, author, name
  @@all = []
  # all instances are posted within class method @@all
  def initialize(title)
    @title = title
    @author = author
    @name = name
    # allows all passed arguments into new instance to be saved as instance var.
    @@all << self
    # pushes all instances with class variable @@all
  end

  def self.all
    @@all
    # displays all passed instances from the @@all class variable.
  end

  def author_name
    if author
      author.name
    else
      NIL
    end
    # displays the authors name of the post writen
    # Unsure of how to get method to return Nil if author unknown, Rspec acting up?
    ###if self.author == false###
    ###return Nil###
  end

end
