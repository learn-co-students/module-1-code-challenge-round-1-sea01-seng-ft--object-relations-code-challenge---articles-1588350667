class Author
  # A name cannot be changed after it is initialized. - done
  attr_reader :name

  @@all = []

  # Author#initialize(name) - done
  # An author is initialized with a name, as a string. - done
  #name
  # Returns the name of the author - done
  def initialize(name)
    @name = name
  
    @@all << self
  end

  def self.all
    @@all 
  end

  # Author#articles
  # Returns an array of Article instances the author has written - done
  def articles
    Article.all.select{|article|article.author == self}
  end


  # Author#magazines
  # Returns a unique array of Magazine instances for which the author has contributed to -done

  def magazines
    articles.map{|article|article.magazine}.uniq 
  end

  #   Author#add_article(magazine, title)

  # Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine. -done 
  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  # Author#topic_areas
    # Returns a unique array of strings with the categories of the magazines the author has contributed to

    def topic_areas
      articles.map{|author|author.categories}.uniq 
    end


end




