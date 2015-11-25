require "pry"
class Human
  def initialize(name)
    @name = name # instance variable 
    @alertness = 0.0
    @coffee = nil 
  end


  def alertness 
    @alertness
  end


  def has_coffee?
    !@coffee.nil? 
  end

  def needs_coffee?
    true
  end

  def buy(coffee) # getter / reader method 
    @coffee = coffee    
  end

  def drink!
    @coffee.slurp!	
    @alertness = @alertness + 0.33 # @alertness += 0.33 another way to write this 
  end
end
