class Author
  attr_reader :name


  @@all = []

  def initialize(name)
    @name = name
    @@all <<self
  end

  def self.all
    @@all
  end

  def articles
    ##double check on this one
    Article.all.select {|article|article.author == self}
  end

  def magazines
    articles_name = Article.all.select {|article|article.author == self}
      articles_name.map {|article|article.magazine}.uniq
  end

  def topic_areas
    magazines.map {|art|art.category}.uniq
  end

  def add_article(magazine, title)
    Article.new(self,magazine,title)
  end

end
