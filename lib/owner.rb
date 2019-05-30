class Owner
  # code goes here
  
  attr_accessor :name, :pets, :fish
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
    @pets.fishes << new_fish
  end
  
end