defmodule Chess.Board do
    alias Chess.Board
    @enforce keys [:row, :col]
    defstruct [:row, :col]
    @board_size 1..8
    
    def new(col, row) when col in @board_size and row in @board_size do
        {:ok, %Board{col: col, row: row}}
    end
    
    def new(_col, _row), do: {:error, :invalid_board}    
    
    def new_board do
        for s <- grids(), into: %{}, do: {s, :empty}
    end
    
    def grids do
        for c <- @board_size, r <- @board_size, into: MapSet.new(), do: %Board{col: c, row: r}
    end
end