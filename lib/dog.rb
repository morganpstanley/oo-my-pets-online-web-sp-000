class Dog
  attr_accessor :mood
  attr_reader :name, :owner

  @@all = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @all << self
    owner.add_dog(self)
  end

end
