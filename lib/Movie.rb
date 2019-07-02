#class for Model1 goes here
#Feel free to change the name of the class
class Movie
    attr_reader :title, :genre
    @@all = []
    def initialize(title, genre)
        @title = title
        @genre = genre
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.get_movies_by_genre(genre)
        @@all.select {|movie| movie.genre == genre}
    end


end
