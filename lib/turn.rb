# ask for input
# get input
# convert input to index
# if index is valid
#  make the move for index
#  show the board
# else
#  ask for input again until you get a valid input
# end

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

def position_taken?(bord, index)
  # check if board - index is empty -> " " or ""
  # ternary solution:
  (board[index] == " " || bord[index] == "" || board[index] == nil) ?
    fales : true
  end

def valid_move?(board, index)
  
