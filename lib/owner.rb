require 'pry'

class Owner
  # code goes here
  
  attr_accessor :name, :pets
  attr_reader :species
  
  @@owners = []
  
  def initialize(species)
    @species = species
    @@owners << self
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end
  
  def self.all 
    @@owners
  end
  
  def self.count
    @@owners.count
  end
  
  def self.reset_all
    @@owners = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end
  
  def walk_dogs
    #binding.pry
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    self.pets.each do |pet, value|
     # binding.pry
     # pet = []
      value.each do |instance|
        instance.mood = "nervous"
      end
      value.clear
    end
  end
  
  def list_pets
    fish_count = 0 
    dog_count = 0 
    cat_count = 0 
    
    self.pets.each do |pet, val|
      #pet.count
          case pet
          when :fishes
            fish_count = val.count
          when :cats
            cat_count = val.count
          when :dogs
            dog_count = val.count
          end
        end
   "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  
end