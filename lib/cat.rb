class Cat
  # code goes here
  attr_accessor :mood, :owner
  
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @mood = mood
    mood = "nervous"
    @owner = owner
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    cat = self.new(name)
    cat.name = name
    cat
  end
end