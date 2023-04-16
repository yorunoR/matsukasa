defmodule Matsukasa.Index.Create do
  def run(client, params) do
    json = Map.get(params, :json)
    Req.post!(client, url: "/databases", json: json)
  end
end
