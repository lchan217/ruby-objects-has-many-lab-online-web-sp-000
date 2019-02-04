class Author 
  attr_accessor :name, :author
  attr_reader :posts
  def initialize(name)
    @name = name 
    @posts = []
  end
  def add_post(post_name)
    @posts << post_name
    post_name.author = self
  end 
  def add_post_by_title(post_name)
    post2 = Post.new(post_name)
    @posts << post2 
    post2.author = self
  end 
  def self.post_count
    Post.all.count
  end 
end 