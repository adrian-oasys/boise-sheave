class TicTacToe
  def initialize(board)
    @board = board
  end

  def winner
    row1 = @board[0]
    row2 = @board[1]
    row3 = @board[2]

    # row checks

    if row1[0] == "o" && row1[1] == "o" && row1[2] == "o"
      return "o"
    end

    if row2[0] == "o" && row2[1] == "o" && row2[2] == "o"
      return "o"
    end

    if row3[0] == "o" && row3[1] == "o" && row3[2] == "o"
      return "o"
    end

    if row1[0] == "x" && row1[1] == "x" && row1[2] == "x"
      return "x"
    end

    if row2[0] == "x" && row2[1] == "x" && row2[2] == "x"
      return "x"
    end

    if row3[0] == "x" && row3[1] == "x" && row3[2] == "x"
      return "x"
    end

    # column checks

    if row1[0] == "o" && row2[0] == "o" && row3[0] == "o"
      return "o"
    end

    if row1[1] == "o" && row2[1] == "o" && row3[1] == "o"
      return "o"
    end

    if row1[2] == "o" && row2[2] == "o" && row3[2] == "o"
      return "o"
    end

    if row1[0] == "x" && row2[0] == "x" && row3[0] == "x"
      return "x"
    end

    if row1[1] == "x" && row2[1] == "x" && row3[1] == "x"
      return "x"
    end

    if row1[2] == "x" && row2[2] == "x" && row3[2] == "x"
      return "x"
    end

    # diagonal checks

    if row1[0] == "o" && row2[1] == "o" && row3[2] == "o"
      return "o"
    end

    if row1[2] == "o" && row2[1] == "o" && row3[0] == "o"
      return "o"
    end

    if row1[0] == "x" && row2[1] == "x" && row3[2] == "x"
      return "x"
    end

    if row1[2] == "x" && row2[1] == "x" && row3[0] == "x"
      return "x"
    end

    return "draw"
  end
end
