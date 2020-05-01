class Magazine
  # The name and category of the magazine can be changed after being initialized. -done
  attr_accessor :name, :category

  @@all = []

  # Magazine#initialize(name, category)
  # A magazine is initialized with a name as a string and a category as a string -done

  # Magazine#name
  # Returns the name of this magazine - done

  # Magazine#category
  # Returns the category of this magazine - done 

  def initialize(name, category)
    @name = name
    @category = category

    @@all << self
  end

  # Magazine.all
  # Returns an array of all Magazine instances -done
  def self.all
    @@all 
  end

  #link to the article class - pulling all articles written for the magazine - helper method
  def articles
    Article.all.select{|article|article.magazine == self}
  end

  # Magazine#contributors
  # Returns an array of Author instances who have written for this magazine

  def contributors
  articles.map{|article|article.author == self}.uniq
  end


  # Magazine.find_by_name(name)
  # Given a string of magazine's name, this method returns the first magazine object that matches - done

  self.find_by_name(name)

  self.all.find{|magazine|magazine.name == name}

  end


  # Magazine#article_titles

  # Returns an array strings of the titles of all articles written for that magazine - double check before submitting

  def article_titles
    self.all.find_all{|magazine|magazine.title == self }
  end

  # Magazine#contributing_authors

  # Returns an array of authors who have written more than 2 articles for the magazine
    #1. find all authors who wrote for this magazine - 
    #2. must return number greater than 2 articles 
  def contributing_authors
    articles.map{|article|article.author > 2}.uniq 

    # authors = self.all.select{|magazine|magazine.author == self}
    # authors.size > 2
    # authors

  end


end

