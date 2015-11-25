require 'pry'

	class Board 
		def initialize
			@board = (1..9).to_a 
		end

		def board # Reader method 
			@board
		end

		# def set_board(new_board) #writer method 
		# 	@board = new_board
		# end

		def show_board
		  		puts "
	     	#{@board[0]} | #{@board[1]} | #{@board[2]}
	     	#{@board[3]} | #{@board[4]} | #{@board[5]}
	     	#{@board[6]} | #{@board[7]} | #{@board[8]}
	     	"
		end

		WINNER_COMBOS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

		def win?
			WINNER_COMBOS.any? do |a, b, c| 
			@board[a] == @board[b] && @board[b] == @board[c]
			end
		end

		def game_over
		win? || draw 
		end

		def update_board(pick, current_player)
				choice = pick - 1
			if @board[choice].is_a? Integer
			  	@board[choice] = current_player
			else
			  false	
			end
		end

		def draw
		possible_moves(@board).empty?
		end

		def possible_moves(pick)
		@board.reject { |x| x.is_a?(String)}
		end

		def finished?(current_player)

				if win?
					puts "Congrats player #{current_player}, you are a winner!"
				else
					draw
					puts "It's a a draw, suckers!"
			end
		end
	end



