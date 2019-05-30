class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name
  def initialize(cat)
    @name = cat
    @mood = "nervous"
  end
end