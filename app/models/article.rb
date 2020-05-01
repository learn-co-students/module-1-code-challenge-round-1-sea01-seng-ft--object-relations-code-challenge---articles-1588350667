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
