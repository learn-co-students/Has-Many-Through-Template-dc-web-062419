#class for Model3 goes here
#Feel free to change the name of the class
class Love
    attr_reader :movie, :user
    @@all = []

    def initialize(movie, user)
        @movie = movie
        @user = user
        self.class.all << self
    end

    def self.all
        @@all
    end
end
