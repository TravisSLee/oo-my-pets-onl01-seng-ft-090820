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
  
  def buy_dog(name) 
    Dog.all << Dog.new(name, self)
  end
  
  def walk_dogs
      
  end
  
  def feed_cats
      
  end
  
  def sell_pets
     @pets.map do |species, names|
      names.map do |pet|
        pet.mood = "nervous"
      end
      names.clear
    end
  end
  
  def list_pets
    "I have #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
  
end