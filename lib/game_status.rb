# Define your WIN_COMBINATIONS constant
 WIN_COMBINATIONS = [[0,1,2],
                     [3,4,5],
                     [6,7,8],
                     [0,3,6],
                     [1,4,7],
                     [2,5,8],
                     [0,4,8],
                     [6,4,2] ]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#won? : returns winning combination or false if no winning comb
def won? (board)
  #for each row, column and diagnonal combination
  WIN_COMBINATIONS.each do | win_combination |
    #grab the winning combinaation of indices we are looking for
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    #extract the value of these winning indices from the board
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    #check if either team has won
    if (position_1 == "X" && position_2 = "X" && position_3 = "X") ||
       (position_1 == "O" && position_2 = "O" && position_3 = "O")
       #we break out of here if we have a winning row, col, or diagnonal
        return win_combination
    end
  end  

  #if we get here there were no winning combinations
  return false
end


#
