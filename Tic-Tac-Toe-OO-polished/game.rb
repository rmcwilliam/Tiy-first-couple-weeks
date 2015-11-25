class Game 
  def initialize(player1, player2, board) 
    @board = board
    @p1 = player1
    @p1.marker = "X"
    @p2 = player2
    @p2.marker = "O"
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
    puts "
     Player 1 you will be => X
     Player 2 you will be => O
     Alternate until win or draw 
     Valid move = Places on the board without an X or O
      "
  end

  def play_the_game
    greeting
    @board.show_board
    until game_over?
      last_player = @current_player
      take_turn
      @board.show_board
    end
    game_result
  end

  def game_over?
    @board.win? | @board.draw?
  end

  def new_game
    @board = Board.new
    @current_player = @p1
  end

  def game_result
    switch_player
    if @board.win?
      puts "Congrats player #{@current_player.name}! You are a winner!"
    else 
      @board.draw?
      puts "It's a draw suckers!"
    end
  end

  def take_turn
    prompt_player
    pick = @current_player.make_pick
    until @board.valid_picks?(pick)
      puts "#{pick} is not valid. Please pick a valid spot on the board."
      pick = @current_player.make_pick
    end
    @board.update!(pick, @current_player.marker)
    switch_player
  end

  def prompt_player
    puts "name: #{@current_player.name} marker: #{@current_player.marker}, make a pick!"
  end

  def switch_player
    if @current_player == @p1
      @current_player = @p2
    else
      @current_player = @p1
    end
  end
end