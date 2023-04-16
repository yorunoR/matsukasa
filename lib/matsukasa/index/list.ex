defmodule Matsukasa.Index.List do
  def run(client, _args) do
    Req.get!(client, url: "/databases")
  end
end
