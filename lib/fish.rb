class Fish
  # code goes here
    attr_accessor :mood
    attr_reader :name
  def initialize(fish)
    @name = fish
    @mood = "nervous"
  end
end