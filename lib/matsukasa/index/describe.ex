defmodule Matsukasa.Index.Describe do
  def run(client, args) do
    index_name = Keyword.get(args, :index_name)
    Req.get!(client, url: "/databases/#{index_name}")
  end
end
