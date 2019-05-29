class Fish
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name)
    @name = name.freeze
    @mood = "nervous"
  end

end