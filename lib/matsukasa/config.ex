defmodule Matsukasa.Config do
  def api_key, do: get_config_value(:api_key)
  def environment, do: get_config_value(:environment)

  defp get_config_value(key) do
    Application.get_env(:matsukasa, key, nil)
  end
end
