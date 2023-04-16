defmodule Matsukasa.Index.Describe do
  def run(client, params) do
    index_name = Map.get(params, :index_name)
    Req.get!(client, url: "/databases/#{index_name}")
  end
end
