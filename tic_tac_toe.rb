class TicTacToe
  def initialize(board)
    @board = board
    @n = @board.size
  end

  def winner
    return 'o' if check_matrix?('o')
    return 'x' if check_matrix?('x')
    return 'unfinished' if @board.any? { |row| row.any? { |x| x == ' ' } }

    'draw'
  end

  private

  def check_matrix?(sign)
    check_rows?(sign) || check_columns?(sign) || check_diagonal?(sign)
  end

  def check_rows?(sign)
    @board.any? { |row| row.all? { |x| x == sign } }
  end

  def check_columns?(sign)
    rotated_board.any? { |row| row.all? { |x| x == sign } }
  end

  def check_diagonal?(sign)
    check_main_diagonal?(sign) || check_anti_diagonal?(sign)
  end

  def check_main_diagonal?(sign)
    main_diagonal.all? { |x| x == sign }
  end

  def check_anti_diagonal?(sign)
    anti_diagonal.all? { |x| x == sign }
  end

  def rotated_board
    @rotated_board ||= @board.transpose
  end

  def main_diagonal
    @main_diagonal ||= (0..@n - 1).to_a.map { |i| @board[i][i] }
  end

  def anti_diagonal
    @anti_diagonal ||= (0..@n - 1).to_a.map { |i| @board[i][@n - i - 1] }
  end
end
