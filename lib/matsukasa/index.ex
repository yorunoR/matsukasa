defmodule Matsukasa.Index do
  alias __MODULE__

  def call(index_client, request) do
    call(index_client, request, [])
  end

  def call(index_client, request, args) when is_list(args) do
    case request do
      :list ->
        Index.List.run(index_client, args)

      :describe ->
        Index.Describe.run(index_client, args)

      :create ->
        Index.Create.run(index_client, args)

      :delete ->
        Index.Delete.run(index_client, args)

      _ ->
        "Undefined request"
    end
  end

  def call(_index_client, _request, _args) do
    "Invalid parameters"
  end
end
