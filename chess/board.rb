require_relative "piece"

class Board

    attr_accessor :board

    def self.populate(board)
        (0..7).each do |row|
            (0..7).each do |col|
                if row != 0 && row != 1 && row != 6 && row != 7
                    board[row][col] = NullPiece.instance
                else
                    board[row][col] = Piece.new
                end
            end
        end
    end

    def initialize
        @board = Array.new(8) {Array.new(8)}
        Board.populate(@board)
    end

    def [](pos)
        x, y = pos
        @board[x][y]
    end

    def []=(pos, value)
        x, y = pos
        @board[x][y] = value
    end

    def move_piece(start_pos, end_pos)
        x, y = start_pos
        i, j = end_pos

        if @board[x][y] == NullPiece.instance
            raise StandardError 
        elsif i < 0 || i > 7 || j < 0 || j > 7
            raise StandardError
        else
            @board[i][j] = @board[x][y]
            @board[x][y] = NullPiece.instance
        end

        rescue StandardError => err
            puts "This is wrong position"
    end

    
end