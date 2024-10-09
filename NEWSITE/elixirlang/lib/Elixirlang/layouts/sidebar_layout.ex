defmodule Elixirlang.SidebarLayout do
  use Tableau.Layout, layout: Elixirlang.RootLayout
  use Phoenix.Component
  alias Elixirlang.Content.Sidebar

  def template(assigns) do
    ~H"""
    <div id="main">
      <div id="content">
        <%= render(@inner_content) |> Strip.clean()%>
      </div>
      <div id="sidebar-primary" class="sidebar">
        <Sidebar.search/>
        <Sidebar.important_links/>
      </div>
    </div>
    """
  end
end
