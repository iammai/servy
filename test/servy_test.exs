defmodule ServyTest do
  use ExUnit.Case
  doctest Servy

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "the refute" do
    refute 2 + 1 == 2
  end
end
