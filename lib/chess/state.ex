defmodule Chess.State do
    alias Chess.{Board, State}
    @players [:white, :black]
    @pieces [:pawn, :castle, :knight, :bishop, :king, :queen]

    defstruct status: :initial,
            turn: :white,
            winner: nil,
            board: Board.new_board(),
            ui: nil
end