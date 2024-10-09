defmodule Strip do
  def clean(%{static: text}) when is_list(text) do
    Enum.join(text) |> Phoenix.HTML.raw()
  end

  def clean(%{static: text}) when is_binary(text) do
    text
  end

  def clean(text) when is_binary(text) do
    text |> Phoenix.HTML.raw()
  end
end
