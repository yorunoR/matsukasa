defmodule Matsukasa.Index.List do
  def run(client, json) do
    Req.get!(client, url: "/databases", json: json)
  end
end
