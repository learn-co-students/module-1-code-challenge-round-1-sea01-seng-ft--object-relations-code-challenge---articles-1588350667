# Please copy/paste all three classes into this file to submit your solution!
class Article
    # An article cannot change its author, magazine, or title after it is has been initialized. - done
    attr_reader :author, :magazine, :title

    @@all = []

    # Article#initialize(author, magazine, title) - done
    # An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string. - done


    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title

        @@all << self 
    end

    def self.all
        @@all 
    end


end


# Article#title
# Returns the title for that given article - done

# Article.all
# Returns an array of all Article instances - done

# Article#author
# Returns the author for that given article - done 

# Article#magazine
# Returns the magazine for that given article -done

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
  
  
  
  
  