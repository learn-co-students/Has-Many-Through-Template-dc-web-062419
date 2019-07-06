require 'pry'

class Driver

    attr_reader 
    attr_accessor 

    @@all = []

    def initialize(name, mood, team, freedom)
        self.class.all << self
    end

    def self.all
        @@all
    end

end