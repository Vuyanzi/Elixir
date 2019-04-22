defmodule Dodo do
  def read do
    name = "Glorious " <> "Vuyanzi"
    book = IO.gets("Hey, #{name}, Which book would you like to read: ")
  end

  def run do
    read()
  end
end
