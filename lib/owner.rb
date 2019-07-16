require 'pry'

class Owner
  attr_reader :name, :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    binding.pry
  end

  def say_species
    puts "I am a #{@species}"
  end

  def add_cat(cat)
    @cats << cat
  end

  def add_dog(dog)
    @dogs << dog
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def reset_all
    self.all.clear
    @@count = 0
  end

end
