require 'pry'

class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :mood, :pets


  @@all = []

  def initialize(species)
    @species = species

    @pets = { :fishes =>[], :dogs =>[], :cats => []}

    @@all << self
  end

  def say_species
    result= "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def fishes
    self.pets[:fishes]

  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def cats
    self.pets[:cats]

  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def dogs
    self.pets[:dogs]

  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def list_pets
    count = 0
    counthash={}
    self.pets.each do |petkey, petarr|
      count = petarr.length
      counthash[petkey] = count
    end
    # binding.pry

    answ_str="I have "
    counthash.each do |petkey, petval|
      # binding.pry

      answ_str << counthash[petkey].to_s + " "
      if petkey == :fishes
        answ_str << "fish, "
      elsif petkey == :dogs
        answ_str << "dog(s), and "
      elsif petkey == :cats
        answ_str << "cat(s)."
      end
    end
    answ_str
  end

  def sell_pets
    self.pets.each do |petkey, petarr|
      petarr.each do |petval|
        petval.mood = "nervous"
      end
      pets[petkey]=[]
    end

  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end





end
