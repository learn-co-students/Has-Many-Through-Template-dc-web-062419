class Run
  @@all = []

  attr_accessor :name, :difficulty, :mountain

  def initialize(name, mountain, difficulty)
    @name = name
    @difficulty = difficulty
    @mountain = mountain
    self.class.all << self
  end

  def snowboarders
    # returns all the snowboarders that have been on this run
  end

  def self.all
    @@all
  end 
end