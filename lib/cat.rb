class Cat
  attr_accessor :mood
  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name # this is the getter only so the cat can't chnage its name
    @name
  end

  def self.all
    @@all
  end

end
