require 'pry'

class HumanPlayer
  def initialize(name=nil)
    @name = name.nil? ? ask_name : name
  end

  def make_pick
    puts "Please pick an available spot on the board:"
    pick = gets.chomp.to_i
    pick
  end

  def ask_name
    puts "Please enter your name:"
    @name = gets.chomp
  end

  def marker=(marker)
    @marker=marker
  end

  def marker
    @marker
  end

  def name
    @name
  end
end
