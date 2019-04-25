defmodule Add do

  def fetch do
    url = "https://jsonplaceholder.typicode.com/todos"
    res =  case HTTPoison.get(url) do
        {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
           body
        _ -> IO.puts "There was an error"
      end
  body = JSON.decode(res) |> elem(1)
  Enum.map(body, fn x -> x["title"] end)
  end
end
