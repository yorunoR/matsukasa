defmodule Matsukasa.Index.List do
  def run(client, _params) do
    Req.get!(client, url: "/databases")
  end
end
