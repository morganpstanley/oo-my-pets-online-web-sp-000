require 'pry'

class Owner
  attr_reader :name, :species, :cats, :dogs

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{@species}."
  end

  def add_cat(cat)
    @cats << cat
  end

  def add_dog(dog)
    @dogs << dog
  end

  def buy_cat(name, self)
    cat = Cat.new(name)
    @cats << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @dogs << dog
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

end
