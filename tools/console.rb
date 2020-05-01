require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#authors
pierce = Author.new("Tamora Pierce")
camden = Author.new("Brian Camden")
smith = Author.new("Jimmy Smith")

#Magazine
usweekly = Magazine.new("US Weekly", "news")
leftie = Magazine.new("For Lefties Only", "specific interest")
life = Magazine.new("Life", "niche topic")

#Articles
article1 = Article.new(pierce, usweekly, "The Deaths")
article2 = Article.new(camden, usweekly, "The Bridge to Terabithia")
article3 = Article.new(smith, life, "This is it.")
best_article = Article.new(smith, leftie, "When You Can't Use Your Right Hand")





### DO NOT REMOVE THIS
binding.pry

0
