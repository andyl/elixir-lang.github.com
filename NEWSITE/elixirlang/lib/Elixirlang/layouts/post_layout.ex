defmodule Elixirlang.PostLayout do
  use Tableau.Layout, layout: Elixirlang.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <%= {:safe, render(@inner_content)} %>
    """
  end
end
