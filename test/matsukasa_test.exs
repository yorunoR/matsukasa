defmodule MatsukasaTest do
  use ExUnit.Case
  doctest Matsukasa

  test "is ok" do
    assert Matsukasa.run() == :ok
  end
end
