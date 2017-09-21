# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2],
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
  WIN_COMBINATIONS.each do |combination|
    puts "going!"
    if postion_taken(board, combination[0])
      puts "doing!""
      current = []
      combination.each do |i|
        current << board[i]
        return current
      end
      token = current[0]
      if current.all?{ |space| space == token }
        current
      end
    end
  end
end
