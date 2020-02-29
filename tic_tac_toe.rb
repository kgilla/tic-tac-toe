def greeting
  puts 'Hey there! Welcome to Tic Tac Toe!'
  print "\n"
  puts 'The object of the game is to get 3 of your symbol in a row'
  puts 'The board will be divided into numbers like:'
  print "\n"
  draw_layout()
  print "\n"
  puts 'Simply choose an open space with the corresponding number to make your move! Have fun!'
  print "\n"
  player_symbol_choice()
end

def draw_layout 
  puts " 1 | 2 | 3 "
  puts "-----------"
  puts " 4 | 5 | 6 "
  puts "-----------"
  puts " 7 | 8 | 9 "
end

def player_symbol_choice
  puts 'Player one, choose X or O as your symbol!'
  player_one_symbol = gets.chomp
  player_one_symbol.upcase!
  if player_one_symbol != ('X' || 'O')
    puts "Not a valid entry, please choose again!"
    player_symbol_choice()
  end
end

def assign_players (player_one_symbol)
  if player_one_symbol == 'X'
    pla
  
class PlayerOne
  def initialize (symbol, wins)
    @symbol = symbol
    @wins = wins 
  end
end

class PlayerTwo
  def initialize (symbol, wins)
    @symbol = symbol
    @wins = wins 
  end
end

def draw_board (board_array)
  puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
  puts "-----------"
  puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
  puts "-----------"
  puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
end

def board_moves (move_input)
  board_array = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
  draw_board(board_array)
end

greeting()