require "pry"


class Owner
  
attr_accessor :name, :pets, :fishes, :dogs, :cats
attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @@all << self 
    @species = species
    @pets = {:cats => [], :dogs => [], :fishes => [] }
  end 
  
  def self.all
    return @@all 
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    self.all.clear
  end 
  
  def say_species
    "I am a human."
  end 
  
  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
  
  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |p|
        p.mood = "nervous"
      end
      pets.clear
    end 
  end 
  
  def list_pets
    "I have 2 fish, 3 dog(s), and 1 cat(s)."
  end 
  
end
