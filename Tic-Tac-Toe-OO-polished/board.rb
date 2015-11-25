class Board
  def initialize 
    @board = (1..9).to_a
  end

  def show_board
    puts "
        #{@board[0]} | #{@board[1]} | #{@board[2]}
        #{@board[3]} | #{@board[4]} | #{@board[5]}
        #{@board[6]} | #{@board[7]} | #{@board[8]}
        "
  end

  WINNING_COMBOS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

  def win? 
    WINNING_COMBOS.any? do |a, b, c| 
      @board[a] == @board[b] && @board[b] == @board[c]
      end
  end

  def update!(pick, marker)
      choice = pick - 1
    if @board[choice].is_a? Integer 
      @board[choice] = marker
    else
      false
    end
  end

  def draw?
    valid_picks?(@board).empty? 
  end

  def valid_picks?(pick)
    @board.reject {|x| x.is_a?(String)}
  end

end