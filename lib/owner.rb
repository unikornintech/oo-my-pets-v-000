require "pry"


class Owner
  @@all = []
  
  
  
  def self.all
    return @@all 
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    self.all.clear
  end 
  
  def initialize(species)
  end 
end


