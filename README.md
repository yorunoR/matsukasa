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
    {:matsukasa, git: "https://github.com/yorunoR/matsukasa.git", tag: "0.1.0"}
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

config :eoai,
  api_key: "your-api-key",
  environment_key: "your-environment"
```
