class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self

    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets.each do |animal, name|
      if animal == :dogs
      name.each do |dog|
        dog.mood = "happy"
      end
    end
  end
  end

  def play_with_cats
    @pets.each do |animal, name|
      name.each do |cat|
        cat.mood = "happy"
      end
    end
  end

  def feed_fish
    @pets.each do |animal, name|
      name.each do |fish|
        fish.mood = "happy"
      end
    end
  end

  def sell_pets
    @pets.each do |animal, name|
      name.each do |animal|
        animal.mood = "nervous"
      end
      name.clear
    end
  end

  def list_pets
    fish_count = @pets[:fishes].size
    dog_count = @pets[:dogs].size
    cat_count = @pets[:cats].size
    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def say_species
    return "I am a #{@species}."
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
