def self.greeting
  puts '--Hey there! Welcome to Tic Tac Toe!--'
  print "\n"
  puts 'The object of the game is to get 3 of your symbol in a row!'
  puts 'The board will be divided into numbers like:'
  print "\n"
  GameBoard.draw_layout
  print "\n"
  puts 'Simply choose an open space with the corresponding number to make your move! Have fun!'
end

class GameBoard 
  attr_accessor :board  
  def initialize
    @board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
  end

  def self.draw_layout 
    puts " 1 | 2 | 3 "
    puts "-----------"  
    puts " 4 | 5 | 6 "  
    puts "-----------"
    puts " 7 | 8 | 9 "
  end

  def self.draw_board (board)
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

class PlayerMaker
  attr_accessor :symbol, :wins
  def initialize (symbol, wins = 0)
    @symbol = symbol
    @wins = wins 
  end

  def self.symbol_choice
    puts 'Player one, choose X or O as your symbol:'
    player_one_symbol = gets.chomp.upcase!
    if player_one_symbol != ('X') && player_one_symbol != ('O')
      puts "Not a valid entry, please choose again!"
      player_symbol_choice()
    end
    return player_one_symbol
  end
  
  def self.symbol_assign (player_one_symbol)
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
end

def first_turn(player_one)
  turns = ["X","O"]
  this_turn = turns[rand(2)]
  puts "Rolling the dice to see who goes first..."
  if player_one.symbol == this_turn
    puts "Looks like player one gets to go first!"
  else
    puts "Looks like player two gets to go first!"
  end
  return this_turn
end

def get_player_input (current_turn, player_one, new_board)
  if player_one.symbol == current_turn
    puts "## Player one, choose a square by entering a number 1-9! ##"
    input = gets.chomp.to_i
  else
    puts "## Player two, choose a square by entering a number 1-9! ##"
    input = gets.chomp.to_i
  end
  if new_board.board[input - 1] == " "
    new_board.board[input - 1] = current_turn
  else
    puts "Space is already taken, try again"
    get_player_input(current_turn, player_one, new_board)
  end
end

def find_winner (board, current_turn)
  winning_combinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],
  [0,4,8],[2,4,6]]
  winning_combinations.each do |combination| 
    counter = 0
    combination.each do |number|
      if board[number] == current_turn
        counter+=1
        if counter == 3
          return true
        end
      end
    end
  end
  return false
end

def turn_switch (current_turn)
  if current_turn == "X"
    current_turn = "O"
  else
    current_turn = "X"
  end
  return current_turn
end

def congragulations (current_turn, player_one)
  if player_one.symbol == current_turn
    puts "Congrats player one! You Win!"
  else
    puts "Congrats player two! You Win!"
  end
end

def play_again(player_one, player_two)
  puts "Want to play again? (Y / N)"
  response = gets.chomp.upcase!
  if response == "Y"
    game_round(player_one, player_two)
  elsif response == "N"
    puts "Goodbye!"
    exit
  else
    play_again(player_one, player_two)
  end
end 

# Main Game Loop
def game_round (player_one, player_two)
  game_over = false
  round_count = 0
  current_turn = first_turn(player_one)
  new_board = GameBoard.new
  while game_over == false
    input = get_player_input(current_turn, player_one, new_board)
    round_count+=1
    GameBoard.draw_board(new_board.board)
    game_over = find_winner(new_board.board, current_turn)
    if game_over == true
      congragulations(current_turn, player_one)
      play_again(player_one, player_two)
    elsif round_count == 9
      puts "A Tie?!"
      play_again(player_one, player_two)
    end
    current_turn = turn_switch(current_turn)
  end
end

# Assigns Symbols and Starts Game
greeting()
player_one = PlayerMaker.new(PlayerMaker.symbol_choice)
player_two = PlayerMaker.new(PlayerMaker.symbol_assign(player_one.symbol))
game_round(player_one, player_two)