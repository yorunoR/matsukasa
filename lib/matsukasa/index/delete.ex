defmodule Matsukasa.Index.Delete do
  def run(client, params) do
    index_name = Map.get(params, :index_name)
    Req.delete!(client, url: "/databases/#{index_name}")
  end
end
