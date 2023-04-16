defmodule Matsukasa.Index do
  alias __MODULE__

  def call(index_client, request, params \\ %{})

  def call(index_client, request, %{} = params) do
    case request do
      :list ->
        Index.List.run(index_client, params)

      :describe ->
        Index.Describe.run(index_client, params)

      :create ->
        Index.Create.run(index_client, params)

      :delete ->
        Index.Delete.run(index_client, params)

      _ ->
        "Undefined request"
    end
  end

  def call(_index_client, _request, _params) do
    "Invalid parameters"
  end
end
