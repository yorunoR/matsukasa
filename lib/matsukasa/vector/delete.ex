defmodule Matsukasa.Vector.Delete do
  def run(client, args) do
    json = Keyword.get(args, :json)
    Req.post!(client, url: "/vectors/delete", json: json)
  end
end
