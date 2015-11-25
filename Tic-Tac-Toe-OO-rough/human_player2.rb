  ## Added some instance variables not present in previous human_player class.
  ## Works but I need to fix it so that player objects track "x" or "o" on the board.

require 'pry'

class HumanPlayer 

  def initialize
    @letter1 = "X"
    @letter2 = "O"
   
  end

  def player_name
    puts "Player 1 you will be X." 
    puts "Player 2 you will be O"
  end

  def letter
    if @letter == @letter1
      @letter = @letter2
    else
      @letter = @letter2
    end
  end


  def make_pick
    puts "Please pick an available square:"
    gets.chomp.to_i
  end

  def play_again
      puts "Would you like to play again? Please press Y or n:"
      play = gets.chomp.upcase
      puts "\n\n\n"

    until ("Y" "N").include?(play)
      puts "Seriously, would you like to play again? Just select Y or N:"
      play = gets.chomp.upcase
    end

    if play == "Y"
      puts "Ok, here we go!"
      puts "\n"
      sleep(2)
      tictactoe  
    else
      play = "N"
      puts "See ya later!"
    end
      play
  end
end