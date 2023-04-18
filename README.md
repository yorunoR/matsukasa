# Matsukasa

Elixir Pinecone API Client

**Under development**

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `matsukasa` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:matsukasa, git: "https://github.com/yorunoR/matsukasa.git", branch: "master"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/matsukasa>.

## Setup

Prepare configuration file `config/config.exs`.

```elixir
import Config

config :matsukasa,
  api_key: "your-api-key",
  environment_key: "your-environment"
```

## Example

### Index

#### list

```elixir
alias Matsukasa.Index
alias Matsukasa.IndexClient

response = IndexClient.new() |> Index.call(:list)
response.body
```

#### describe

```elixir
alias Matsukasa.Index
alias Matsukasa.IndexClient

response = IndexClient.new() |> Index.call(:describe, index_name: "sample")
response.body
```

### Vector

#### upsert

```elixir
alias Matsukasa.Vector
alias Matsukasa.VectorClient

index = VectorClient.new("your_index_name")

json = %{
  vectors: %{
    id: "something_like_uuid",
    values: "vector_values",
    metadata: "your_metadata_map"
  },
  namespace: "your_namespace"
}

Vector.call(index, :upsert, json: json)
```

#### query

```elixir
alias Matsukasa.Vector
alias Matsukasa.VectorClient

index = VectorClient.new("your_index_name")

json = %{
  namespace: "your_namespace",
  includeValues: false,
  includeMetadata: true,
  topK: 10,
  vector: "vector_values"
}

response = Vector.call(index, :query, json: json)
response.body["matches"]
```
