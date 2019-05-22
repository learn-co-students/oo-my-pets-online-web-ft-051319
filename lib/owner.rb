require "pry"

class Owner

  attr_accessor :name, :pets #pets attr_accessor is so that we can change the constituents of the instance variable "@pets"

  @@all=[]

  def initialize(name)
    @name=name
    @pets={
      fishes:[],
      dogs:[],
      cats:[]
    }
    @@all << self
  end

  def species
    @name
  end

  def say_species
    "I am a #{@name}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood="happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood="happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood="happy"}
  end

  def sell_pets
    @pets.each do |animal,instance|
      instance.each do |i|
        i.mood="nervous"
      end
      @pets[animal].clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
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


end
