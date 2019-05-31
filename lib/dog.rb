class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  def initialize(dog)
    @name = dog
    @mood = "nervous"
  end
end