defmodule MimiTest do
  use ExUnit.Case
  doctest Mimi

  test "greets the world" do
    assert Mimi.hello() == :world
  end
end
