class Author
  #attr_accessor :name
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
     Article.all.select {|article| article.author == self}
  end

  def magazines
     article = self.articles.select{|art| art.author == self}.uniq
     article.map do |a|
        a.magazine
     end
  end

  def add_article(magazine, title)
     article = Article.new(self, magazine, title)
     article.author = self
     article
  end

  def topic_areas
    article = self.articles.select{|art| art.author == self}.uniq
    article.map do |a|
       a.title
    end
  end

end
