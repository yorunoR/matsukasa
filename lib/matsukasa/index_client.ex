defmodule Matsukasa.IndexClient do
  alias Matsukasa.Config

  def default_base_url do
    "https://controller.#{Config.environment()}.pinecone.io"
  end

  def new(opts \\ []) do
    api_key = opts |> Keyword.get(:api_key, Config.api_key())
    base_url = opts |> Keyword.get(:base_url, default_base_url())
    receive_timeout = opts |> Keyword.get(:receive_timeout, 15_000)

    headers = [
      "Api-Key": api_key,
      "Content-Type": "application/json",
      Accept: "application/json; charset=utf-8"
    ]

    Req.new(
      base_url: base_url,
      headers: headers,
      receive_timeout: receive_timeout
    )
  end
end
