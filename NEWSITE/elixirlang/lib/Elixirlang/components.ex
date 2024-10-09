defmodule Elixirlang.Components do
  use Phoenix.Component

  def highlight_elixir(assigns) do
    ~H"""
    <div class="code-literal"><%= render_slot(@inner_block) %></div>
    """
  end
end
