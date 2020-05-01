class Article
    attr_accessor
    attr_writer
    attr_reader :title, :author, :magazine
    @@all = []
        
        def initialize(author, magazine, title)
            @author = author
            @magazine = magazine
            @title = title
            save
        end

        def save
            @@all << self
        end

        def self.all
            @@all
        end

    
end
