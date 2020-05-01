require 'pry'
class Author
  attr_accessor 
  attr_reader :name
  attr_writer :articles


  def initialize(name)
    @name = name
    @articles = []
    @magazines = []
  end

  def add_article_to_articles(article)
    if article.author.name == self.name
      @articles << article
    end
  end

  def articles
    self.articles = @articles
  end

  def add_magazine(magazine)
    magazines
      @magazines << magazine
    end
  end


end
