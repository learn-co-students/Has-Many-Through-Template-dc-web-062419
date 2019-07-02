require 'pry'
class Mountain
  @@all = []

  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    self.class.all << self
  end

  def runs
    # Returns an array of all the runs on a mountain
    Run.all.select { |run| run.mountain == self } 
  end

  def snowboarders
    # returns all the snowboarders that have been to this mountain
    shred_set = Shred.all.select { |shred| runs.include?(shred.run) }
    shred_set.map { |shred| shred.snowboarder }.uniq
  end

  def percent_difficulty
    # returns the breakdown of its runs difficulty
    amazing_runs_percent = (self.runs.select { |run| run.difficulty == 'amazing' }.length.to_f / self.runs.length.to_f * 100).round(2)
  end

  def print_difficulty
    "#{self.name} has #{amazing_runs_percent}% amazing runs and #{100 - amazing_runs_percent} noob runs!"
  end

  def self.all
    @@all
  end
end