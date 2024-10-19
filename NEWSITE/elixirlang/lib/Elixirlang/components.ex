defmodule Elixirlang.Components do
  use Phoenix.Component

  def highlight_elixir(assigns) do
    ~H"""
    <div>
      <%= render_slot(@inner_block) |> codehl() %>
    </div>
    """
  end

  defp codehl(block) do
    newstring =
      """
      ```elixir
      #{block.static |> to_string()}
      ```
      """

    html = {newstring, %{}}
      |> Conpipe.Converter.Mdex.convert()
      |> elem(0)

    Map.put(block, :static, [html])
  end
end
