class Owner

@@all= []


attr_accessor :name, :pets
attr_reader :species

def initialize(species)
  @species = species
  @pets = {:fishes => [], :dogs => [], :cats => []}
  @@all << self
end

def say_species 
  "I am a #{species}."
end

def buy_fish(fishies_name)
  @pets[:fishes] << Fish.new(fishies_name)
end

def buy_cat(kitties_name)
  @pets[:cats] << Cat.new(kitties_name)
end

def buy_dog(doggies_name)
  @pets[:dogs] << Dog.new(doggies_name)
end

def walk_dogs
  @pets.each do |species, pets|
    if species == :dogs 
      pets.each do |dog|
        dog.mood = "happy"
      end 
    end
  end
end

def play_with_cats
   @pets.each do |species, pets|
    if species == :cats
      pets.each do |cat|
        cat.mood = "happy"
      end 
    end
  end
end

def feed_fish
   @pets.each do |species, pets|
    if species == :fishes
      pets.each do |fish|
        fish.mood = "happy"
      end 
    end
  end
end

def sell_pets
   @pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end 
      pets.clear
    end
  end
  
  def list_pets 
    fish_number = @pets[:fishes].size
    dog_number = @pets[:dogs].size 
    cat_number = @pets[:cats].size
    "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
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