defmodule Matsukasa.Vector.Upsert do
  def run(client, args) do
    json = Keyword.get(args, :json)
    Req.post!(client, url: "/vectors/upsert", json: json)
  end
end
