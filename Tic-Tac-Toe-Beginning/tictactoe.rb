#Not a working version, keeping track of the player made things very difficult.

require "pry"
require "set" 


#player1 = ""

#player2 = ""

board = (1..9).to_a # put it down at the bottom

# map. all?, any? use these? 

def show_board(board)

  puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
     "
end

WINNER = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]


def greeting 
	puts "Players, welcome to the game of tic tac toe"
	puts "I'm not going to explain it."
	puts "Just make your move, dummy!"
end

def prompt_player(current_player) # function get user input and returns it when called 
	puts "please make a move #{current_player}, select a number 1-9."
	number = gets.chomp
	until ('1'..'9').to_a.include?(number) # keeps prompting player until the letter is lower case and in the alphabet
		puts "#{number} is not a number 1-9. Please guess again:"
		number = gets.chomp # updates gets.chomp
	end
	number
end

# def postmortem 
# 	if win? 
# 		puts "Nice work, you win!"
#     end
# end

def game_over?(player_input, current_move)
	if player_input.combination(3).map.any?{|i| WINNER}
		puts "Congrats#{player_input}, your a winner!"
	elsif current_move == 9	
		puts "It's a draw, suckers!"
	end
end



def tictactoe(board)
	#board = (1..9).to_a
	player1 = [] # stores moves in an array
	player2 = [] # stores moves in an array
	greeting 
	show_board(board)

	current_player = player2
	player_input = player1
	current_move = 1

	p1 = "x"
	p2 = "o"

	
	until game_over?(player_input, current_move)
		terd = prompt_player(current_player)

		if current_player == player1
		   current_player = player2
		   player_input = player2
		else
			current_player = player1
			player_input = player1
		end

			board[terd.to_i - 1] = p1
			board[terd.to_i - 1] = p2

		show_board(board)
		#current_move += 1
	end
	# postmortem(current_guesses, answer, current_player)
end

tictactoe(board)


# def play_again?
# 	puts "Would you like to play again? (y/n)"
# 	gets.chomp
# end

# def get_name_player
# 	puts "Player, what is your name?"
# 	gets.chomp 
# end

# def play_tictactoe(player1, player2)                                                       
# 	player1 = get_name_player        
# 	player2 = get_name_player 

# 	tictactoe(player1, player2)
# end

# def play(player1, player2)
# 	play_tictactoe(player1, player2)
# 	choice = play_again?
# 	until choice == "n"
# 		play_tictactoe(player1, player2)
# 		choice = play_again?
# 	end
# 	puts "See ya, sucker!"
# end


# play(player1, player2)




