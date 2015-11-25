require 'set'
require 'pry'

class ComputerPlayer

	def player_name
			puts "The computer will be playing this one!"
			puts "Not intelligently though..."
			currrent_player = "X"
	end

	def make_pick(currrent_player) # I want to store values in set and not pick the same numbers again!!!
		 name = [].to_set
		 number = rand(1..9)
		 #pick = number 
		 #name.add(pick)
		 until !name.member?(number) 
		 	 number = rand(1..9)
		 	 name.add(number)
		 	 #name.member?(number)
		 end
		 pick = number
		 name.add(pick)
		 pick
	end

  def play_again
    puts "How does a computer choose to play again?"
    puts "It doesn't, you must tell it to do so."
    puts "Would you like the computer to play against itself again? Y or N"
    play = gets.chomp.upcase

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
    puts "Good choice, this is very boring!"
   end
   play
 end
end

