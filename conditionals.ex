defmodule Conditionals do
    def main do
        if_else()
        case_statement()
        cond_statement()
    end

    def if_else do
        if String.valid?("Hello") do
            IO.puts "Valid string!"
        else
            IO.puts "Invalid string."
        end

        if 42 do
            IO.puts "It is 42"
        end

        unless is_atom("hello") do
            IO.puts "It isn't Atom"
        end
    end

    def case_statement do
        case {:ok, "Message"} do
            {:ok, result} -> result
            {:error} -> "Error!"
            _ -> "Catch all" # Default case
        end

        pie = 3.14
        case "cherry pie" do
           ^pie -> "Not so tasty"
            pie -> "I bet #{pie} is tasty"
        end

        case {1, 2, 3} do
            {1, x, 3} when x > 0 -> "Will match"
            _ -> "Won't match"
        end
    end

    def cond_statement do
        cond do 
            2 + 2 == 5 -> "This will not be true"
            2 * 2 == 3 -> "Nor this"
            1 + 1 == 2 -> "But this will"
            true -> "Catch all"
        end
    end

    def with_statement do
        user = %{first: "Sean", last: "Callan"}

        with {:ok, first} <- Map.fetch(user, :first),
            {:ok, last} <- Map.fetch(user, :last),
            do: last <> ", " <> first # case dont match all, an error will be returned
    end
end