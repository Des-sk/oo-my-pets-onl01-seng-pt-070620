class Owner
  @@all=[ ]
  attr_reader :name, :species
  
  def initialize(name)
    @name= name
    @@all<< self
  end
  
  def species
    @species= "human"
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
end

def cats 
  Cat.all {|cats|==self}
  
end

end

