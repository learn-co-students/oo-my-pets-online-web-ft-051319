require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def say_species
    "I am a #{self.species}."
  end


  def buy_fish(name)
    pet_fish = Fish.new(name)
    @pets[:fishes] << pet_fish
  end

  def buy_cat(name)
    pet_cat = Cat.new(name)
    @pets[:cats] << pet_cat
  end

  def buy_dog(name)
    pet_dog = Dog.new(name)
    @pets[:dogs] << pet_dog
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet_type, pets|
      pets.map do |pet|
        pet.mood = "nervous"
      end
    end.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
