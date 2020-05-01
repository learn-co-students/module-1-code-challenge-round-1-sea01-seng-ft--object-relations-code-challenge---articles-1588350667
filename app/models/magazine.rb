class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def Magazine.find_by_name(name)

  end

  def article_titles
    #string of titles

  end

  def contributing_authors
    #Returns an array of authors who have written more than 2 articles for the magazine
  end


  def contributors

    Author.all.select {|contributors| contributors [0] }

  end

  # def magazine_name(name)
  #   @magazine_name = name 
  # end

  # def category_name(category)
  #   @category_name = category

  
  # end

  def self.all
    @@all
  end


end
