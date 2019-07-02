
class Snowboarder
  @@all = []

  attr_accessor :name, :skill

  def initialize(name, skill)
    @name = name
    @skill = skill
    self.class.all << self
  end

  def add_shred(run)
    Shred.new(run, self)
  end

  def runs
    # returns the runs that a snowboarder has been on
    Shred.all.select { |shred| shred.snowboarder == self }
  end

  def mountains
    # returns the mountains that a snowboarder has been to
    Mountain.all.select do |mountain|
      mountain.runs.each do |run|
        self.runs.include?(run)
      end
    end
  end



  def self.all
    @@all
  end
end