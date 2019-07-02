require_relative "lib/Love.rb"
require_relative "lib/Movie.rb"
require_relative "lib/User.rb"

require "pry"

ursula = User.new("Ursula")
michelle = User.new("Michelle")

puts "Does it get all users?"
puts User.all == [ursula, michelle]

mean_girls = Movie.new("Mean Girls", "Comedy")
frieda = Movie.new("Frieda", "Drama")

puts "Does it get all movies?"
puts Movie.all == [mean_girls, frieda]


ursula_love_frieda = ursula.love_movie(frieda)
michelle_love_meangirls = michelle.love_movie(mean_girls)

puts "Can we love a movie?"
puts Love.all.include?(michelle_love_meangirls)

puts "Does it know all loves?"
puts Love.all == [ursula_love_frieda, michelle_love_meangirls]
puts "Does it know who loves what?"
puts ursula.get_loved_movies == [frieda]
puts michelle.get_loved_movies == [mean_girls]

puts "Can we get a list of movies by genre?"
puts Movie.get_movies_by_genre("Drama") == [frieda]


puts "Can we get a list of loved movies by genre according to user?"
puts michelle.get_loved_by_genre("Comedy") == [mean_girls]
puts michelle.get_loved_by_genre("Drama") == []

puts "Can we unlove a movie?"
ursula.unlove_movie(frieda)
puts !ursula.get_loved_movies.include?(frieda)
puts !Love.all.include?(ursula_love_frieda)




binding.pry