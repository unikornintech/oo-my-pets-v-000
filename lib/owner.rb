require "pry"


class Owner
  
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @@all << self 
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
  
end


