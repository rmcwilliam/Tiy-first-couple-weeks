# Not trying to track player 1 and player 2, especially by name, makes things alot easier.
# Updated from version 3

require 'pry'

WINNER_COMBOS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]


def show_board(board)

  puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
     "
end


def greeting
	puts "This is gonna blow your mind!"
	 sleep(1)
	puts "You are about to play the game called tictactoe......"
	 sleep(2)
	puts "Ok, get ready!"
	 sleep(3)
	puts "Seriously, get ready!"
	 sleep(4)
	puts "\n\n"
end

def player_name
	puts "Would you like to play as X or O?"
	choice = gets.chomp.upcase 
	until ["X", "O"].include?(choice)
		puts "Sorry, you must chosse 'x' or 'o'"
		choice = gets.chomp.upcase		
	end
	choice
end

def take_turn(board, current_player)
	puts "\n\n\n\n"
	puts "Player #{current_player}, please choose an available numbered space on the board:"
	show_board(board)
	input = gets.chomp.to_i
	until possible_moves(board).include?(input)
		puts "Does not compute, please make a valid move."
		input = gets.chomp.to_i
	end
	input
end

def change_player(current_player)
	current_player == "X" ? "O" : "X"
end

	# if current_player == "x"
	# 	current_player = "o"
	# else
	# 	current_player = "o"
	# end


def possible_moves(board)
	board.reject { |x| x.is_a?(String)}
end

def game_over(board)
	win?(board) || draw(board) 
end

def draw(board)
	possible_moves(board).empty?
end

def win?(board)
	WINNER_COMBOS.any? do |a, b, c| # deconstructing 
		board[a] == board[b] && board[b] == board[c]
	end
end

def finished?(board, current_player)
	show_board(board)
	if win?(board)
		puts "Congrats #{change_player(current_player)}, you win!"
	else
		draw(board)
		puts "It's a a draw, suckers!"
	end
end


def tictactoe
	board = (1..9).to_a 
	greeting
	current_player = player_name
	
	until game_over(board)
			pick = take_turn(board, current_player)

			board[pick - 1] = current_player

			#show_board(board)

			current_player = change_player(current_player)
	end
	finished?(board, current_player)
	play_again
end

def play_again
	puts "Would you like to play again? Please press Y or N:"
	play = gets.chomp.upcase
	puts "\n\n\n"

	until ("Y" "N").include?(play)
		puts "Seriously, would you like to play again? Just select Y or N:"
		play = gets.chomp.upcase
	end

	if play == "Y"
		puts "Ok, here we go!"
		puts "\n\n\n"
		sleep(2)
		tictactoe
	else
		play = "N"
		puts "See ya later!"
	end
	play
end

tictactoe



