defmodule Recurse do
  def loopy([head | tail]) do
    IO.puts "Head: #{head} Tail: #{inspect(tail)}"
    loopy(tail)
  end

  def loop([]), do: IO.puts "Done"
end

Recurse.loopy([1, 2, 3, 4, 5])
