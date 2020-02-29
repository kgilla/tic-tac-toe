# player_one_turn = false
# while game_over = false
#   player_input = get_player_input(player_one_turn, board)

class GameBoard 
  attr_accessor :board

  def initialize
    @board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
  end

  def draw_layout 
    puts " 1 | 2 | 3 "
    puts "-----------"  
    puts " 4 | 5 | 6 "  
    puts "-----------"
    puts " 7 | 8 | 9 "
  end

  def draw_board (board)
    puts " "
    puts "\tGame Board" + "        " + "Legend"
    puts " "
    puts "\t #{board[0]} | #{board[1]} | #{board[2]} " + "\t" + "1 | 2 | 3 "
    puts "\t-----------" + "\t" +"-----------"
    puts "\t #{board[3]} | #{board[4]} | #{board[5]} " + "\t" + "4 | 5 | 6 "
    puts "\t-----------" + "\t" +"-----------"
    puts "\t #{board[6]} | #{board[7]} | #{board[8]} " + "\t" + "7 | 8 | 9 "
    puts " "
  end
end

new_board = GameBoard.new
new_board.draw_board(new_board.board)
new_board.board[0] = 5
new_board.draw_board(new_board.board)
new_board = GameBoard.new
new_board.draw_board(new_board.board)


winning_combinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

temp_board = ['X','X','X','X','X','X','X','X','X']

last_move = 'X'

winning_combinations.each do |combination| 
  counter = 0 
  
end

# combination.each do |number|
#   if temp_board[number]
# end