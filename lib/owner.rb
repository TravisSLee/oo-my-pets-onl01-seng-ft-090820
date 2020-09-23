class Owner
  # code goes here
  attr_accessor  :pets
  
  attr_reader :name, :species
  @@count_owners = 0
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end
  
  def cats 
    @pets[:cats]
  end
  
  def dogs
    @pets[:dogs]
  end
  
  def buy_cat(name) 
    @pets[:cats] << Cats.new(name)
  end
  
  
  
end