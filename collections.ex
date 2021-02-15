defmodule Collections do
    def main do
        lists()
        tuples()
        key_list()
        maps()
    end

    def lists do
        list = [3.14, :cat, "DOG"] 
        IO.inspect list, label: "list"

        # faster
        prepending = [:new_element | list]
        IO.inspect prepending, label: "prepending"

        # slower
        appending = list ++ ["appending element"]
        IO.inspect appending, label: "appending"

        # concat
        concat = prepending ++ appending
        IO.inspect concat, label: "concat"

        # subtract
        subtract = concat -- prepending
        IO.inspect subtract, label: "subtract"
        IO.inspect subtract == appending, label: "subtract == appending"

        head = hd concat
        IO.inspect head, label: "Head"
        tail = tl concat
        IO.inspect tail, label: "Tail"

        [head_match | tail_match] = concat
        IO.inspect head_match, label: "Head Matching"
        IO.inspect tail_match, label: "Tail Matching"
    end

    def tuples do
        tuple = {3.24, :cat, "dog"}
        IO.inspect tuple, label: "Tuple"
    end

    def key_list do
        list = [hello: :world, cat: "dog", float: 3.0]
        IO.inspect list, label: "list"

        list_2 = [{:hello, :world}, {:cat, "dog"}, {:float, 3}]
        IO.inspect list_2, label: "list 2"
        IO.puts "list == list_2  ->  #{list == list_2}"
        IO.puts "list === list_2  ->  #{list === list_2}"
    end

    def maps do
        map = %{:foo => "bar", :hello => :world}
        IO.inspect map

        IO.inspect map[:foo], label: "Access value by key"

        key = "key"
        map_2 = %{key => "value"}

        IO.inspect map_2, label: "Map key by variable"

        map_3 = %{foo: "bar", hello: :world}
        IO.inspect map_3 === map, label: "Another sintax for only atom keys"

        IO.inspect map_3.foo
        IO.inspect %{map_3 | hello: "world"} # works only for existing key
        IO.inspect Map.put(map_3, "cat", :meow)
    end
end