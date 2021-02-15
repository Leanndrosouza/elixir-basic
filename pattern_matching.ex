defmodule PatternMatching do
    def main do
        lists()
        pin_operator()
    end

    def lists do 
        list = [1, 2, 3]
        # [] = list
        # ** (MatchError) no match of right hand side value: [1, 2, 3]

        [1 |  tail] = list
        
        IO.inspect tail
        # [2 | _] = list
        # ** (MatchError) no match of right hand side value: [1, 2, 3]
    end

    def pin_operator do
        x = 1
        # ^x = 2
        # ** (MatchError) no match of right hand side value: 2
        key = "hello"
        %{^key => value} = %{"hello" => "world"}
        IO.inspect value

        # %{^key => value} = %{:hello => "world"}
        # ** (MatchError) no match of right hand side value: %{hello: "world"}

        greeting = "Hello"
        greet = fn
            (^greeting, name) -> "Hi #{name}"
            (greeting, name) -> "#{greeting}, #{name}"
        end

        IO.inspect greet.("Hello", "Sean")
        IO.inspect greet.("Mornin'", "Sean")
    end
end