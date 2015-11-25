require './human_player'
require './board'
require './computer'
require 'pry'

	class Game

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

	def tictactoe                                              ### ### PRIVATE/PUBLIC/PROTECTED? #####
		board = Board.new
		player = HumanPlayer.new 
		greeting
		current_player = player.player_name
		

		until board.game_over
				last_player = current_player
				board.show_board
				pick = player.make_pick(current_player)
			until board.possible_moves(pick).include?(pick)
				puts "Is that a valid move dummy?"
				pick = player.make_pick(current_player)
			end
				pick
				board.update_board(pick, current_player)
			if current_player == "X"
				current_player = "O"
			else
				 current_player = "X"
			end
		end
			board.show_board
			board.finished?(last_player)
			player.play_again
	end
end

	game = Game.new
	game.tictactoe


