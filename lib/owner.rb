class Owner
  # code goes here
  attr_accessor  :pets, :cats, :dogs
  
  attr_reader :name, :species
  
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
  
  def buy_cat(cat_name) 
    @pets[:cats] << Cat.new(cat_name, name)
  end
  
  def buy_dog(dog_name) 
    @pets[:dogs] << Dog.new(dog_name, name)
  end
  
  def walk_dogs
    @pets.each do |type, doggo|
     if type == :dogs  
      doggo.mood = "happy"
      end
    end
  end
  
end