  require 'minitest/autorun'
  require './computer.rb'
  #require './game.rb'
  require './human_player'
  require './board'
  require 'pry'


  class TicTacToeTest < MiniTest::Test # TicTacToeTest inherits from class Test inside MiniTest => gets all methods from original class Test
  	def test_get_player_name #Passing player
  		current_player = HumanPlayer.new 
  		assert current_player.player_name 
  	end

    def test_change_player_and_play_again # Passing player
      current_player = HumanPlayer.new 
      assert current_player.make_pick(current_player)
      assert current_player.play_again
    end

  	def test_create_board # Passing board
  		board = Board.new
  		assert board.board
  	end

  	def test_update_board # Passing board
  		board = Board.new
  		board.update_board("x", 7)
  		assert_equal board.board[6], "x"
  	end

  	def test_board_win  #Passing board
  		board = Board.new
  		board.board[0] = "x"
  		board.board[1] = "x"
  		board.board[2] = "x"
  		assert board.win? 
  	end

    def test_computer_player_get_name_and_make_pick # Passing computer player
      current_player = ComputerPlayer.new
      assert current_player.make_pick(current_player)
    end  

  end	


