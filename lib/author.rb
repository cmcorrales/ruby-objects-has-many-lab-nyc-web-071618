require "pry"
class Author
  attr_accessor :name

  @@count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@count += 1
  end

  def posts
    @posts
  end

  def add_post_by_title(post_name)
    new_post = Post.new(post_name)
    new_post.author = self
    @posts << new_post
    @@count += 1
  end

  def self.post_count
    @@count
  end



end