class Pirate
  attr_accessor :name, :height, :weight

  @@all = []

  def initialize(name, weight, height)
    @name = name
    @height = height
    @weight = weight
    @@all << self
  end

  def self.all
    @@all
  end
end

