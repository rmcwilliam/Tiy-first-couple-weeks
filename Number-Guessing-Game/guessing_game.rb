require "pry"
# require "./smart"
require "./human"
require "./random"
require "./counting"
require "./smarthw"

class GuessingGame
  def initialize(player) # method with player argument 
    @player = player # instance variable makes it available to all methods within the class SCOPE. 
  end                # instance variable available to the whole instance of the class. SCOPE of variable 

  def play
    number = rand(1..100) # number = local variable SCOPE; local variables go away after function is called.
    result = nil
    guess = @player.get_guess(result) # Instance variable calling method .get_guess which calls the Instance variable @count
    count = 1
    until guess == number
      if guess > number
        puts "Too High!"
        result = :high
      else
        puts "Too Low!"
        result = :low
      end
      guess = @player.get_guess(result) # guess = local variable (scope contained within play method)
      count += 1
      binding.pry
    end
    puts "You win! Took #{count} tries. The number was #{number}."
  end

  def to_s # method that tells ruby to print string when run in terminal 
  play
  end

end
                                          
game = GuessingGame.new(SmartPlayer.new) # Creating new instances of two classes.If I put in CountingPlayer.new it would be the computer guessing.   

game.play

