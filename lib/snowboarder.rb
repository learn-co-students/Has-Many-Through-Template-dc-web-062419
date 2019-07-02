
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

  def shreds
    Shred.all.select { |shred| shred.snowboarder == self }
  end

  def runs
    # returns the runs that a snowboarder has been on
    shreds.map { |shred| shred.run }.uniq
  end

  def mountains
    # returns the mountains that a snowboarder has been to
    runs.map { |run| run.mountain }.uniq
  end



  def self.all
    @@all
  end
end