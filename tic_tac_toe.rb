# Intro

def greeting
  puts '--Hey there! Welcome to Tic Tac Toe!--'
  print "\n"
  puts 'The object of the game is to get 3 of your symbol in a row!'
  puts 'The board will be divided into numbers like:'
  print "\n"
  draw_layout()
  print "\n"
  puts 'Simply choose an open space with the corresponding number to make your move! Have fun!'
end

def draw_layout 
  puts " 1 | 2 | 3 "
  puts "-----------"  
  puts " 4 | 5 | 6 "  
  puts "-----------"
  puts " 7 | 8 | 9 "
end

def player_one_symbol_choice
  puts 'Player one, choose X or O as your symbol:'
  player_one_symbol = gets.chomp.upcase!
  if player_one_symbol != ('X') && player_one_symbol != ('O')
    puts "Not a valid entry, please choose again!"
    player_symbol_choice()
  end
  return player_one_symbol
end

def assign_player_two_symbol (player_one_symbol)
  player_two_symbol = ""
  if player_one_symbol == 'X'
    player_two_symbol = 'O'
  else
    player_two_symbol = 'X'
  end
  puts "Great selection! Player one will be: #{player_one_symbol} and player two will take the leftover: #{player_two_symbol}"
  puts " "
  return player_two_symbol
end

# Loop Functions

def get_player_input (player_one_turn, board)
  move_input = 0
  if player_one_turn == false
    puts "## Player two, choose a square by entering a number 1-9! ##"
    player_input = gets.chomp.to_i
  else
    puts "## Okay player one, choose a square by entering a number 1-9! ##"
    player_input = gets.chomp.to_i
  end
  if board[player_input] == " "
    return player_input
  else
    puts "Space is already taken"
    get_player_input(player_one_turn, board)
  end
end

def board_moves (move_input, player_one_turn)
  move_input = move_input - 1
  if player_one_turn == true
    board[move_input] = player_one.symbol
    player_one_turn = false
  else
    board[move_input] = player_two.symbol
    player_one_turn = true
  end
  return move_input
end

def check_win (board,)
  winner = "none"
  if board[0] == "#{t}" && board[1] == "#{t}" && board[2] == "#{t}"
    winner = board[0]
  elsif board[3] == "#{t}" && board[4] == "#{t}" && board[5] == "#{t}"
    winner = board[1]
  elsif board[6] == "#{t}" && board[7] == "#{t}" && board[8] == "#{t}"
    winner = board[2]
  elsif board[0] == "#{t}" && board[3] == "#{t}" && board[6] == "#{t}"
    winner = board[0]
  elsif board[1] == "#{t}" && board[4] == "#{t}" && board[7] == "#{t}"
    winner = board[1]
  elsif board[2] == "#{t}" && board[5] == "#{t}" && board[8] == "#{t}"
    winner = board[2]
  elsif board[0] == "#{t}" && board[4] == "#{t}" && board[8] == "#{t}"
    winner = board[0]
  elsif board[2] == "#{t}" && board[4] == "#{t}" && board[6] == "#{t}"
    winner = board[2]
  end
    return winner
end


def declare_winner (winner)
  puts winner
  puts player_one.symbol
  if player_one.symbol == winner
    puts "Player one wins!"
  else
    puts "Player two wins!"
  end
end

class PlayerMaker
  attr_accessor :symbol, :wins
  def initialize (symbol, wins = 0)
    @symbol = symbol
    @wins = wins 
  end
end

# Game Start
greeting()
player_one_symbol = player_one_symbol_choice()
player_two_symbol = assign_player_two_symbol(player_one_symbol)
player_one = Player.new(player_one_symbol)
player_two = Player.new(player_two_symbol)
new_board = GameBoard.new
player_one_turn = false
while game_over = false
  player_move 

  


def player_one_turn
end

class GameBoard 
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


class Player
  
  attr_accessor :symbol, :wins
  
  def initialize (symbol, wins = 0)
    @symbol = symbol
    @wins = wins 
  end
  
  def player_move
    move_input = 0
    if player_one_turn == false
      puts "## Player two, choose a square by entering a number 1-9! ##"
      move_input = gets.chomp.to_i
    else
      puts "## Okay player one, choose a square by entering a number 1-9! ##"
      move_input = gets.chomp.to_i
    end
end
end

def valid_turn (player)