defmodule Matsukasa.VectorClient do
  alias Matsukasa.Config
  alias Matsukasa.Index
  alias Matsukasa.IndexClient

  def new(index_name, opts \\ []) do
    api_key = opts |> Keyword.get(:api_key, Config.api_key())
    receive_timeout = opts |> Keyword.get(:receive_timeout, 15_000)

    {:ok, base_url} = set_base_url(index_name)

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

  def set_base_url(index_name) do
    response = IndexClient.new() |> Index.call(:describe, index_name: index_name)

    case response.status do
      200 -> {:ok, "https://" <> response.body["status"]["host"]}
      _ -> {:error, "Not found"}
    end
  end
end
