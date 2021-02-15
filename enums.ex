defmodule Enums do
    def main do
        IO.inspect Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end)

        IO.inspect Enum.chunk_every([1, 2, 3, 4, 5, 6], 2)    

        IO.inspect Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(x) -> String.length(x) end)
    
        IO.inspect Enum.filter([1, 2, 3, 4], fn(x) -> rem(x, 2) == 0 end)
    end
end