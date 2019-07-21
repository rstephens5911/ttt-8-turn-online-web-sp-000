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

def turn(board)
  puts "Please enter 1-9:"
end
