require 'pry'

class HumanPlayer 

	def player_name
			puts "Would you like to play as X or O?"
			choice = gets.chomp.upcase 
		until ["X", "O"].include?(choice)
			puts "Sorry, you must choose 'x' or 'o'"
			choice = gets.chomp.upcase		
		end
		choice
	end

	def make_pick(currrent_player)
		 puts "Player #{currrent_player} please pick an available square:"
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