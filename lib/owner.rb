class Owner
  # code goes here
  attr_accessor  :pets, :cats, :dogs
  
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
   # @pets = {:dogs => [], :cats => []}
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
    Cat.all.select {|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name) 
    Cat.new(cat_name, self)
  end
  
  def buy_dog(dogs_name) 
    Dog.new(dogs_name, self)
  end
  
  def walk_dogs
      dog.mood = "happy"
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
    
    
    "I have #{owner.dogs.length} dog(s), and #{Cat.all.length} cat(s)."
  end
  
end