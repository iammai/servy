defmodule Recurse do
  def sum([head | tail], total) do
    IO.puts "Total: #{total} Head: #{head} Tail: #{inspect(tail)}"
    total = total + head
    sum(tail, total)
  end

  def sum([], total) do
    IO.puts "FINAL Total: #{total}"
    total
  end

  def maitriple([head | tail], list) do
    IO.puts "List: #{list} Head: #{head} Tail: #{inspect(tail)}"
    #list = [head*3 | list] # Expected result is [3, 6, 9, 12, 15]
    list = list ++ [head*3]
    #Because lists in Elixir / Erlang are linked lists internally,
    #so adding in the front of the list is a fast operation
    #because you don't need to recreate the links on the tail of the list.
    #So adding the element in the end of the list will require the linked list
    # to recreate all links again from back to front.
    maitriple(tail, list)
  end

  def maitriple(_, list) do
    list
  end

  def triple([head | tail]) do
    IO.puts "Head: #{head} Tail: #{inspect(tail)}"
    [head*3 | triple(tail)]
  end

  def triple([]) do
    []
  end
end

Recurse.sum([1, 2, 3, 4, 5], 0)
mt = Recurse.maitriple([1, 2, 3, 4, 5], [])
# Expected result [3, 6, 9, 12, 15]
IO.inspect mt
t = Recurse.triple([1, 2, 3, 4, 5])
IO.inspect t
# Expected result [3, 6, 9, 12, 15]
