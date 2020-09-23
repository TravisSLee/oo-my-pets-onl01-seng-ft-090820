class Cat
  # code goes here
  attr_accessor :mood
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
end