class Author
  attr_accessor :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_article(magazine, title)
    Article.all.select {||}
  end
end
