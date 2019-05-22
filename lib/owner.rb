require "pry"

class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @@count += 1
  end

  # def initialize
  #   @pets = {fishes: [], cats: [], dogs: []}
  #   @species = "human"
  #   @@all << self
  #   @@count += 1
  # end

  # def species
  #   @species = "human"
  # end

  # def species=(species)
  #   @species = species
  # end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].map {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].map {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].map {|fish| fish.mood = "happy"}
  end
  
  def say_species
    return "I am a #{self.species}."
  end

  def sell_pets
    @pets.map do |species, pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish = @pets[:fishes].size
    cats = @pets[:cats].size
    dogs = @pets[:dogs].size
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
  
  def self.all
    return @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

end