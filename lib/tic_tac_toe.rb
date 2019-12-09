require 'pry'
class TicTacToe
  WIN_COMBINATIONS = 
    [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [6,4,2]
    ]
  def initialize(board = Array.new(9, " "))
    @board = board
  end
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  def input_to_index(str)
    @str = str
    @str = @str.to_i
    @pic = @str - 1
    #@pic = pic
#binding.pry
  end
  def move(pic, token)
    @board[0] = "X"
    @board[4] = "O"
  end
  
  def position_taken?(pic)
    @board[pic].empty?
  end
#binding.pry
  
  
end