
class Actor

    attr_accessor :name, :experience
    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience
        self.class.all << self
    end
    def self.all
        @@all
    end

    def add_movie(movie)
        ActorMovie.new(movie, self)
    end

    def roles
        actor_movies = ActorMovie.all.select {|am| am.actor == self}
        actor_movies.map do |am|
            am.movie
        end
    end
end
