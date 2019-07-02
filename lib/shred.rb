class Shred
  @@all = []

  attr_accessor :run, :snowboarder

  def initialize(run, snowboarder)
    @run = run
    @snowboarder = snowboarder
    self.class.all << self
  end
  
  def self.all
    @@all
  end
end