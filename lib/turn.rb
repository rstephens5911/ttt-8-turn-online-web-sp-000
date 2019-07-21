# board array
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# display_board is the method to build the board for output
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def position_taken?(board, index)
  # check if board - index is empty -> " " or ""
  # ternary solution:
  (board[index] == " " || board[index] == "" || board[index] == nil) ?
    false : true
  end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    true
  end
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  else
    move
  end
  display_board(board)
end

# ask for input
# get input
# convert input to index
# if index is valid
#  make the move for index
#  show the board
# else
#  ask for input again until you get a valid input
# end
def turn(board)
  puts "Please enter 1-9:"
  gets.slice = input

  if valid_move(input, board)
    move(board, index, "X")
  else
    turn(board)
  end
  turn(board)
end
