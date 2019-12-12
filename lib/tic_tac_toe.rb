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
    
  def initialize
    @board = Array.new(9, " ")
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(str)
    str = str.to_i
    pic = str - 1
    #@pic = pic
  end
  
  def move(pic, token = "X")
    @board[pic] = token
  end
  
  def position_taken?(pic)
    if @board[pic] == " "
       false
    else
       true
    end
    #binding.pry
  end 
  
  def valid_move?(pic)
   if pic >= 0 && pic < 9
     !position_taken?(pic)
   else
     false
    end
  end
  
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn
    puts "Please choose your move by choosing 1-9."
    str = gets
    
      p1 = input_to_index(str)
    if valid_move?(p1)
      @board[p1] = current_player
      display_board
      
    else
      puts "invalid"
      # puts "Please choose your move by choosing 1-9."
      str = gets
    end
    #turn
  end
  
  def won?
    WIN_COMBINATIONS.find do|w|
    @board[w[0]] == @board[w[1]] && @board[w[1]] == @board[w[2]] && self.position_taken?(w[0])
    end
  end
  
  def full?
    @board.all?{|s|s != " "}
  end

  def draw?
    !self.won? && self.full?
  end
  
  def over?
    self.draw? || self.won?
  end
  
  def winner
    #binding.pry
    if self.won?
      @board[self.won?[0]]
    else
      nil
      
    end
    
    #binding.pry
  end
  
  def play
    
  end
end