require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###




#Author
matthew = Author.new("Matthew")
matthew2 = Author.new("Matthew")
edward = Author.new("Edward")
joseph = Author.new("Joseph")

Author.all
matthew.name
joseph.name
# confirmed that it's only a reader. won't update
#matthew2.name = "Matt"
matthew.articles
# matthew.magazines




#Magazine
# (name, category)
vogue = Magazine.new("Vogue","Fashion")
sports = Magazine.new("Sports Illustrated", "Sports")
vibe = Magazine.new("Vibe Baskeball", "Sports")
vogue2 = Magazine.new("Vogue","Sports")

Magazine.all
vogue.name
vogue.category
vibe.category
Magazine.find_by_name("Vouge")

# def initialize(author, magazine, title)
#article
a_1 = Article.new(matthew, vogue, "Dope Shoes" )
a_2 = Article.new(matthew2, vogue, "leisure suits")
a_3 = Article.new(matthew, vogue, "Tennis Shirts" )
a_4 = Article.new(matthew, sports, "Top 10 Tennis Players")
a_5 = Article.new(matthew, vibe, "Best Dunks of All Time" )
a_6 = Article.new(edward, vogue, "Yoga Outfits")
a_7 = Article.new(joseph, vibe, "Is Gonzaga due for a title" )
a_8 = Article.new(matthew, vogue, "Dope" )
a_1.author
a_1.magazine
a_7.author
a_7.magazine

Article.all
vibe.article_titles

#association
matthew.add_article(vibe,"How to hit a backhand")


### DO NOT REMOVE THIS
binding.pry

0
