require "singleton"

module Slideable

    def moves

    end


end

module Stepable

end

class Piece
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end


end

class NullPiece < Piece
    include Singleton
    def initialize
    end
end