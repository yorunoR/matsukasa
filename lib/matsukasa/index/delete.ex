defmodule Matsukasa.Index.Delete do
  def run(client, args) do
    index_name = Keyword.get(args, :index_name)
    Req.delete!(client, url: "/databases/#{index_name}")
  end
end
