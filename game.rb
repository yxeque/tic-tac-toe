class Board
  def initialize
    @cells = Array.new(3) { Array.new(3) { nil } }
  end
end

class Player
end

class Game
  def initialize
    @board = Board.new
    @players = [Player.new("X"), Player.new("O")]
    @current_player = @players.first
  end
end