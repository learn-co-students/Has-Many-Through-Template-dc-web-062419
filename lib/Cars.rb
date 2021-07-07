require 'pry'

class Car

    attr_reader :make, :value, 
    attr_accessor :status, :thief

    @@all = []

    def initialize(make, value, status="pending")
        @make = make
        @value = value
        @status = status
        @thief = thief
        self.class.all << self
    end

    def self.all
        @@all
    end
  
end
