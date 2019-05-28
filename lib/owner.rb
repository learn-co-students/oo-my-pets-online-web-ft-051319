require 'pry'
class Owner
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat

  @@all = []
  #@@pets = {:fishes => [], :dogs => [], :cats => []}

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end
  end

  def sell_pets
    @pets.each do |species, instances|
      instances.each do |pet|
        pet.mood = 'nervous'
        #binding.pry
      end
      instances.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
end
