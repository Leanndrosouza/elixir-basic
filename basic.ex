defmodule Basic do
    def main do
        integers()
        floatings()
        booleans()
        atoms()
        strings()
    end

    def integers do
        IO.puts "### integers ###"
        integer = 255
        IO.puts integer
        integer_hex = 0xFF
        IO.puts integer_hex
    end

    def floatings do
        IO.puts "### floatings ###"
        floating = 3.24
        IO.puts floating
    end

    def booleans do
        IO.puts "### booleans ###"
        IO.puts true
        IO.puts false
    end

    def atoms do
        IO.puts "### atoms ###"
        IO.puts is_atom(:cat)
        cat_str = "cat"
        IO.puts cat_str === :cat
        IO.puts cat_str == :cat
        IO.puts :cat
    end

    def strings do
        IO.puts "### strings ###"
        stuff = "foo\nbar"
        IO.puts stuff
    end
end