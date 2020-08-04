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
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    self.dogs.each {|dog|dog.mood = "happy"}
  end

 def feed_cats
   self.cats.each{|cat| cat.mood= "happy"}
 end
 
 def sell_pets
   pets = self.dogs + self.cats
   
   pets.each{|p| pet.mood= "nervous"}
   
  # self.dogs.each {|dog|dog.mood = "nervous"}
  # self.cats.each{|cat| cat.mood= "nervous"}
  # [dogs, cats].each {|o| o.self= nil}
 end
 
end