# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [4,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
]

def full?(board)
  !board.detect{|i| i == " "}
end

def won?(board)
  puts "FIRST STEP"
  WIN_COMBINATIONS.each do |combination|
    board_test = []
    if position_taken?(board, combination[0])
      combination.each do |i|
        board_test << board[i]
      end #combination.each
      puts board_test
    end #if position_taken
  end #WIN_COMBINATIONS.each
end #def
