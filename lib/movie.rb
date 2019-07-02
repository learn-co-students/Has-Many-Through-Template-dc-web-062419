#class for Model2 goes here
#Feel free to change the name of the class
require 'pry'

class Movie

    attr_reader :title, :genre, :rating
    @@all = []

    def initialize(title, genre, rating)
        @title = title
        @genre = genre
        @rating = rating
        self.class.all << self
    end

    def self.all
        @@all
    end
    def add_actor(actor)
        ActorMovie.new(self, actor)
    end

    def cast
       actor_movies = ActorMovie.all.select {|am| am.movie == self}
        actor_movies.map do |am|
            am.actor
        end
    end

    def self.get_movie_by_genre(genre)
        movies = self.all.select {|movie| movie.genre == genre}
        movies.map do |movie|
            movie.title
        end
    end

    def self.get_movie_by_rating(rating)
        movies = self.all.select {|movie| movie.rating == rating}
        movies.map do |movie|
            movie.rating
        end
    end

    def get_total_experience 
        total = 0
        cast.each {|actor| total += actor.experience}
        total
    end
end
