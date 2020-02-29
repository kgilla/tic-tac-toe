def greeting
  puts '--Hey there! Welcome to Tic Tac Toe!--'
  print "\n"
  puts 'The object of the game is to get 3 of your symbol in a row'
  puts 'The board will be divided into numbers like:'
  print "\n"
  draw_layout()
  print "\n"
  puts 'Simply choose an open space with the corresponding number to make your move! Have fun!'
  print "\n"
end

def draw_layout 
  puts " 1 | 2 | 3 "
  puts "-----------"
  puts " 4 | 5 | 6 "
  puts "-----------"
  puts " 7 | 8 | 9 "
end

def player_one_symbol_choice
  puts 'Player one, choose X or O as your symbol!'
  player_one_symbol = gets.chomp.upcase!
  if player_one_symbol != ('X') && player_one_symbol != ('O')
    puts "Not a valid entry, please choose again!"
    player_symbol_choice()
  end
  return player_one_symbol
end

def player_two_symbol_choice (player_one_symbol)
  player_two_symbol = ""
  if player_one_symbol == 'X'
    player_two_symbol = 'O'
  else
    player_two_symbol = 'X'
  end
  puts "Okay! Player one will be #{player_one_symbol} and player two will take #{player_two_symbol}"
  return player_two_symbol
end

# def board_moves (move_input, board_array)
#   move_input = move_input - 1
#   if player_one_turn == true
#     board_array[move_input] = player_one.symbol
#     player_one_turn = false
#   else
#     board_array[move_input] = player_two.symbol
#     player_one_turn = true
#   end
#   draw_board(board_array)
#   game_loop()
# end

# def draw_board (board_array)
#   puts " #{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
#   puts "-----------"
#   puts " #{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
#   puts "-----------"
#   puts " #{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
# end

# def check_win (board_array)
#   winner = "none"
#   if board_array[0..2] == ('X' || 'O')
#     winner = array[0]
#   elsif board_array[3..5] == ('X' || 'O')
#     winner = array[3]
#   elsif board_array[6..8] == ('X' || 'O')
#     winner = array[6]
#   elsif board_array[0] && board_array[3] && board_array[6] == ('X' || 'O')
#     winner = array[0]
#   elsif board_array[1] && board_array[4] && board_array[7] == ('X' || 'O')
#     winner = array[1]
#   elsif board_array[2] && board_array[5] && board_array[8] == ('X' || 'O')
#     winner = array[2]
#   elsif board_array[0] && board_array[4] && board_array[8] == ('X' || 'O')
#     winner = array[0]
#   elsif board_array[2] && board_array[4] && board_array[6] == ('X' || 'O')
#     winner = array[2]
#   end
#   declare_winner(winner)
# end

# def declare_winner (winner)
#   if player_one.symbol == winner
#     "Player one wins!"
#   else
#     "Player two wins!"
#   end
# end

class PlayerMaker
  def initialize (symbol, wins = 0)
    @symbol = symbol
    @wins = wins 
  end
end

def game_loop (player)
  check_win(board_array)
  move_input = 0
  if player_one_turn == false
    puts "Okay player two, choose a square by entering a number 1-9!"
    move_input = gets.chomp
  else
    puts "Okay player one, choose a square by entering a number 1-9!"
    move_input = gets.chomp
  end
  board_moves(move_input, player_one_turn)
end

#Game Start!
board_array = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
player_one_turn = false
greeting()
player_one_symbol = player_one_symbol_choice()
player_two_symbol = player_two_symbol_choice(player_one_symbol)
player_one = PlayerMaker.new(player_one_symbol)
player_two = PlayerMaker.new(player_two_symbol)
puts player_one[symbol]
