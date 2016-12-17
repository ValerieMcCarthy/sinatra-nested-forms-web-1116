class Ship
  attr_accessor :name, :type, :booty

  @@all = []

  def initialize(name:, type:, booty:) #why do we need these colons?
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end