defmodule Matsukasa.Index.Create do
  def run(client, args) do
    json = Keyword.get(args, :json)
    Req.post!(client, url: "/databases", json: json)
  end
end
