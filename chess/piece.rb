require "singleton"
DIRECTIONS = [:diagonal, :horizontal, :vertical]

module Slideable
    def moves

    end
end

module Stepable

end

class Piece
    attr_reader :color, :board
    attr_writer :pos

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
end

class Bishop < Piece
    
end

class Rook < Piece
    include Slideable
    def initialize(color, board, pos)
        super
    end

    def move_dirs
        x, y = pos
        directions = []
        if self.board[x+1][y].is_a?(NullPiece) || self.board[x-1][y].is_a?(NullPiece)
            directions << :horizontal
        elsif self.board[x][y+1].is_a?(NullPiece) || self.board[x][y-1].is_a?(NullPiece)
            directions


    end

end

class Queen < Piece

end

class NullPiece < Piece
    include Singleton
    def initialize
    end
end