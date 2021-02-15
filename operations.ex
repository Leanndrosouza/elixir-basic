defmodule Operations do
    def main do
        arithmetic()
        logics()
        comparison()
    end

    def arithmetic do
        IO.puts "2 + 2"
        IO.puts 2 + 2

        IO.puts "2.5 - 1.0e-2"
        IO.puts 2.5 - 1.0e-2

        IO.puts "2 + 1.2e-3"
        IO.puts 2 + 1.2e-3

        IO.puts "3 * 7"
        IO.puts 3 * 7

        IO.puts "10 / 3"
        IO.puts 10 / 3

        IO.puts "div(21, 5)"
        IO.puts div(21, 5)

        IO.puts "rem(21, 5)"
        IO.puts rem(21, 5)
    end

    def logics do
        IO.puts -20 || true

        IO.puts false || 42

        IO.puts 42 && true

        IO.puts 42 && nil

        IO.puts !false

        IO.puts !!42

        IO.puts true and 42

        IO.puts not true

        IO.puts not true and 42

        #IO.puts 42 and true -> (ArgumentError) argument error: 42
    end
    
    
    # priority
    # number < atom < reference < function < port < pid < tuple < map < list < bitstring
    def comparison do
        IO.puts "1 > 2 => #{1 > 2}"

        IO.puts "1 > '2' => #{1 > "2"}"

        IO.puts "1 != 2 => #{1 != 2}"

        IO.puts "2 == 2 => #{2 == 2}"

        IO.puts "2 <= 3 => #{2 <= 3}"

        IO.puts "2 == 2.0 => #{2 == 2.0}"

        IO.puts "2 === 2.0 => #{2 === 2.0}"
    end
end