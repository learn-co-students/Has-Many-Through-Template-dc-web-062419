#class for Model3 goes here
#Feel free to change the name of the class
class ActorMovie

    attr_accessor :movie, :actor
    @@all = []

    def initialize(movie, actor)
        @movie = movie
        @actor = actor
        self.class.all << self 
    end

    def self.all
        @@all
    end 
  
end
