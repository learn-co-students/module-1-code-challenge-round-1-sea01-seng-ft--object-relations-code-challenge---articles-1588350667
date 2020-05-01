require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# class Magazine
#   attr_accessor :name, :category
#   @@all = []

#   def initialize(name, category)
#     @name = name
#     @category = category
#     @@all << self
#   end


#   def contributors

#     Author.all.select {|contributors| contributors [0] }

#   end

#   # def magazine_name(name)
#   #   @magazine_name = name 
#   # end

#   # def category_name(category)
#   #   @category_name = category

  
#   # end

#   def self.all
#     @@all
#   end


# end


mag1 = Magazine.new("Huslter", "Work")

auth1 = Author.new("JC")

art1 = Article.new("Womxn's Rights Pt.1", "Pt.2", "Pt.3")





### DO NOT REMOVE THIS
binding.pry

0
