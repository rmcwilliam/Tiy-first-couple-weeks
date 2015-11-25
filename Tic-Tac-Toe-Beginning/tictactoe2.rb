# Had it traking player turns and marking board....
# Tried chnaging to hasehes to get win function working when I reveretd back to arrays, it no longer tracks player or x's/o's correctly.
# Fail. # See tictactoe 3
require 'pry'

WINNER_COMBOS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
P1_GUESSES = Array.new
P2_GUESSES = Array.new
MARKER1 = "X"
MARKER2 = "O"

board = (1..9).to_a 

def show_board(board)

  puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
     "
end


def greeting
	puts "Hello players!"
	 #sleep(2)
	puts "You are about to play tictactoe......"
	 #sleep(3)
	puts "Ok, get ready!"
	 #sleep(4)
	puts "Seriously, get ready!"
	 #sleep(2)
end

def prompt_player(current_player, board, p1, p2) # function get user input and returns it when called 
	
	show_board(board)
	puts "Please make your move, #{current_player}! "
	choice = gets.chomp
	

	until ('1'..'9').to_a.include?(choice)
		puts "Sorry, does not compute, please select an unchosen number from the board."
		choice = gets.chomp # updates gets.chomp
	end
    
    if current_player == p1 then board[choice.to_i - 1] = MARKER1 
    	P1_GUESSES.push(choice)	
  	else 
  		 board[choice.to_i - 1] = MARKER2
  		P2_GUESSES.push(choice)
  	end	
  	choice
end

def win
	until
	winner == false
		if 	    current_player == p1 then P1_GUESSES.sort.combination(3).to_a = guesses
				guesses.each do |a|
				winner = true if WINNER_COMBOS.include?(a)
				end
		else 
			current_player == p2 then P2_GUESSES.sort.combination(3).to_a = guesses
			guesses.each do |a|
			winner = true if WINNER_COMBOS.include?(a)	
			end
		end
	end
	winner
end

def tictactoe(board)
	board = (1..9).to_a 
	greeting


	puts "Player 1, you will be x, what is your name?"
	p1 = gets.chomp

	puts "Player 2, you will be x, what is your name?"
	p2 = gets.chomp

	current_player = p1

	move = 0
	

	until move == 9
		prompt_player(current_player, board, p1, p2)

		if current_player == p1
			current_player = p2	
	    else 
	    	current_player = p1 
	    end
		
		move += 1
	end
end

tictactoe(board)


