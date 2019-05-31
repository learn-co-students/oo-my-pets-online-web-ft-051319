require "pry"

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @name = name
    @species = species
    @pets = {}
    @pets[:fishes] = []
    @pets[:dogs] = []
    @pets[:cats] = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish (name)
    @pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat (name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each do |pet_type, the_pets|
      the_pets.each {|pet| pet.mood = "nervous"}
    end
    @pets = {}
  end
  
  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    # expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")
  end
end