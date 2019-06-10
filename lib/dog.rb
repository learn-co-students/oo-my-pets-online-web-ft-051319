class Dog
  attr_accessor :mood
  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name
    @name
  end

  def self.all
    @@all
  end
end
