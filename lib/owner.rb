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
  
end
