require "pry"


class Owner
  @@all = []
  
  def initialize(_)
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


