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
     article = Article.select {|art| art.magazine == self}
     article.map do |a|
        a.author
     end
  end

  def find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
    
  end

  def article_titles
    article = Article.select {|art| art.magazine == self}
    article.map do |a|
       a.title
    end
  end

  def contributing_authors
    article = Article.all.select {|art| art.magazine == self}
    author = article.map do |a|
       a.author
    end
    author2 = []
    i = 0
    j = i + 1
    while i < author.count do
      while j < author.count do
        count = 0
        if author[i] == author[j]
          count += 1
          if count > 2
            author2 << author[i] 
          end
        end
        j += 1
      end
      i += 1
    end
    author2.uniq
  end
end
