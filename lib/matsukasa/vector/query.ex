defmodule Matsukasa.Vector.Query do
  def run(client, args) do
    json = Keyword.get(args, :json)
    Req.post!(client, url: "/query", json: json)
  end
end
