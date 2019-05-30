class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []
  
  def initialize(species)
    @species = species
     @@all << self
     @pets = {fishes: [], cats: [], dogs: []}
  end
  
  def say_species
     "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end
  
   def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end
  
   def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end
  
  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood= "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood= "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood= "happy"
    end
  end
  
  def sell_pets
    @pets.each do |type, pets|
      pets.map do |pet|
      pet.mood= "nervous"
    end
  end
    pets.clear
  end
  

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
  
end