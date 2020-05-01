require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("Nicole")
author2 = Author.new("Jea")

magazine1 = Magazine.new("A book1", "sin")
magazine2 = Magazine.new("A day", "sin")

article1 = Article.new(author1, magazine1,  "a")
article2 = Article.new(author2,magazine2,  "b")
article3 = Article.new(author2, magazine2,  "c")
article3 = Article.new(author2, magazine2,  "d")








### DO NOT REMOVE THIS
binding.pry

0
