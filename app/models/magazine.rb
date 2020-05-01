class Magazine
  attr_accessor :name, :category
  attr_reader :contributors
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @contributors = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  #  def contributors(author)
  #   if article.author ==   
  #   @contributors << article.author
  # end

end
