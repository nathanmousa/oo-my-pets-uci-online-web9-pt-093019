class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end
  
  def self.all
    @@all
  end
  
  
  
  private
  def save
    @@all << self if !@@all.include?(self)
  end
end