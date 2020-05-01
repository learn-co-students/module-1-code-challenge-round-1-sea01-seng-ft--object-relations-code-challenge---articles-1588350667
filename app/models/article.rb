class Article
    attr_reader :author, :magazine, :title
   # attr_writer 

    @@all = []

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


#single source of truth because an author has many articles and a magazine has many articles