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
    if position_taken?(board, combination[0])
      puts "going!"
    end
  end
end
