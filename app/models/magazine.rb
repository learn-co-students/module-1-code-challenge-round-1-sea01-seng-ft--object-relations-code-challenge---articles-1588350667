class Magazine
  attr_accessor :name, :category

  @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    Article.all.select {|article|article.magazine == self}
  end


  def self.find_by_name(name)
    @@all.find {|magazine|magazine.name = name}
  end

  def article_titles
    articles_name = Article.all.select {|article|article.magazine == self}
      articles_name.map {|article|article.title}
  end



  def contributing_authors
    instances_array = Article.all.select {|article|article.magazine == self}
      instances_array.map {|article|article.author.name}
  end

end





# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine