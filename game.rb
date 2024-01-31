class Board
  def initialize
    @cells = Array.new(3) { Array.new(3) { nil } }
  end

  def display
    @cells.each do |row|
      puts row.join(" | ")
    end
  end

  def make_move(position, player)
    row = (position - 1) / 3
    column = (position - 1) % 3
    if valid_move?(position)
      @cells[row][column] = player.mark
      true
    else
      false
    end
  end

  def valid_move?(position)
    (1..9).include?(position) && @cells[(position - 1) / 3][(position - 1) % 3].nil?
  end
end

class Player
  attr_reader :mark

  def initialize(mark)
    @mark = mark
  end
end

class Game
  def initialize
    @board = Board.new
    @players = [Player.new("X"), Player.new("O")]
    @current_player = @players.first
  end
end

board = Board.new
board.display