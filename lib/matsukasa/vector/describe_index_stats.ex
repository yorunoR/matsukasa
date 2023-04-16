defmodule Matsukasa.Vector.DescribeIndexStats do
  def run(client, _args) do
    Req.post!(client, url: "/describe_index_stats")
  end
end
