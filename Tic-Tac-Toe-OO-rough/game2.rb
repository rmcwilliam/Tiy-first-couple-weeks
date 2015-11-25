	## Added some objects and instance variables not present in previous game class.
	## Works but I need to fix it so that player objects track "x" or "o" on the board.

require './human_player2'
require './board'
require './computer'
require 'pry'

class Game 
def initialize 
	@p1 = HumanPlayer.new
	@p2 = HumanPlayer.new
	@current_player = @p1
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

	def tictactoe                                           
		board = Board.new
		greeting
		@current_player.player_name

		until board.game_over
				last_player = @current_player
				board.show_board
				pick = @current_player.make_pick
			until board.possible_moves(pick).include?(pick)
				puts "Is that a valid move dummy?"
				pick = @current_player.make_pick
			end
				pick
				board.update_board(pick, @current_player.letter)
			if @current_player == @p1
				 @current_player = @p2
			else
				 @current_player = @p1	
			end
		end
			board.show_board
			board.finished?(last_player)
			@current_player.play_again
	end
end

game = Game.new
game.tictactoe


