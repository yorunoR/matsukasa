defmodule Matsukasa.Vector do
  alias __MODULE__

  def call(vector_client, request, args \\ [])

  def call(vector_client, request, args) when is_list(args) do
    case request do
      :delete ->
        Vector.Delete.run(vector_client, args)

      :fetch ->
        Vector.Fetch.run(vector_client, args)

      :upsert ->
        Vector.Upsert.run(vector_client, args)

      :query ->
        Vector.Query.run(vector_client, args)

      _ ->
        "Undefined request"
    end
  end

  def call(_vector_client, _request, _args) do
    "Invalid parameters"
  end
end
