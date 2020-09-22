WIN_COMBINATIONS
    defines a constant WIN_COMBINATIONS with arrays for each win combination (FAILED - 1)
  #won?
    returns falsey for an empty board (FAILED - 2)
    returns falsey for a draw (FAILED - 3)
    returns an array of matching indexes for a top row win (FAILED - 4)
    returns an array of matching indexes for a middle row win (FAILED - 5)
    returns an array of matching indexes for a bottom row win (FAILED - 6)
    returns an array of matching indexes for a left column win (FAILED - 7)
    returns an array of matching indexes for a middle column win (FAILED - 8)
    returns an array of matching indexes for a right column win (FAILED - 9)
    returns an array of matching indexes for a left diagonal win (FAILED - 10)
    returns an array of matching indexes for a right diagonal win (FAILED - 11)
  #full?
    returns true for a draw (FAILED - 12)
    returns false for an in-progress game (FAILED - 13)
  #draw?
    returns true for a draw (FAILED - 14)
    returns false for a game won in the first row (FAILED - 15)
    returns false for a won game diagonaly (FAILED - 16)
    returns false for an in-progress game (FAILED - 17)
  #over?
    returns true for a draw (FAILED - 18)
    returns true for a won game when the board is full (FAILED - 19)
    returns true for a won game when the board is not full (FAILED - 20)
    returns false for an in-progress game (FAILED - 21)
  #winner
    return X when X won (FAILED - 22)
    returns O when O won (FAILED - 23)
    returns nil when no winner (FAILED - 24)

end





    def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      win_set = [win_index_1, win_index_2, win_index_3]
      return win_set # return the win_combination indexes that won.
    end
  end
  false
end
