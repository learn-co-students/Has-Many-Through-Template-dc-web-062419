require_relative "lib/actor.rb"
require_relative "lib/movie.rb"
require_relative "lib/actor_movie.rb"
require "pry"


tom = Actor.new("Tom", 5)
sarah = Actor.new("Sarah", 8)
mission = Movie.new("Mission Impossible", "action", 5)
other = Movie.new("Other Guys", "comedy", 4)
avengers = Movie.new("Avengers", "action", 4)


p   "This test expects the Actor.all method to return an array of all actors."
p   Actor.all.size == 2
p   "-------------------------------------"

p   "This test expects the Movie.all to return an array of all movies"
p   Movie.all.size == 3
p   "-------------------------------------"
p   "This test expects #add_actor to add Tom to the movie Other Guys"
    other.add_actor(tom)
    other.add_actor(sarah)
p   other.cast.include?(tom)
p   "This test expects #cast to return the cast of Other Guys"
p   other.cast.size == 2
p   "-------------------------------------"

p   "This test expects #add_movie to add Mission Impossible and Avengers to Tom's movie list"
    tom.add_movie(mission)
    tom.add_movie(avengers)
p   tom.roles.include?(avengers)
p   "This test expects #roles to return the list of movies for a certain actor."
p   tom.roles.size == 3
p   "-------------------------------------"

p   "This test expects .get_movie_by_genre to get all movies of a specific genre"
p   Movie.get_movie_by_genre("action").count == 2
p   "-------------------------------------"

p "This test expects .get_movie_by_rating to get all movies of a specific rating"
p Movie.get_movie_by_rating(4).count == 2
p   "-------------------------------------"

p "This test expects #get_total_experience to get the years of experience of all actors of a specific movie"
p other.get_total_experience == 13
binding.pry