#class for Model2 goes here
#Feel free to change the name of the class
require "pry"
class User
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def love_movie(movie)
        Love.new(movie, self)
    end

    def get_loved_movies
      loves = Love.all.select {|love| love.user == self}
      loves.map {|love| love.movie}
    end

    def get_loved_titles
        self.get_loved_movies.map {|movie| movie.title}
    end

    def get_loved_by_genre(genre)
        self.get_loved_movies.select {|movie| movie.genre == genre}
    end

    def unlove_movie(movie)
       delete_movie = Love.all.find{|love| love.user == self && love.movie == movie}
        Love.all.delete(delete_movie)
    end
end
