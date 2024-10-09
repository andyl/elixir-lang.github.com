defmodule Elixirlang.HomePage do
  use Tableau.Page,
    layout: Elixirlang.SidebarLayout,
    permalink: "/"

  use Phoenix.Component
  import Elixirlang.Components

  def template(assigns) do
    ~H"""
    <div class="hfeed">
      <div class="hentry post">
        <div class="entry-summary">
          <h5>
            Elixir is a dynamic, functional language for building scalable and
            maintainable applications.
          </h5>

          <p>
            Elixir runs on the Erlang VM, known for creating low-latency,
            distributed, and fault-tolerant systems. These capabilities and Elixir
            tooling allow developers to be productive in several domains, such as web
            development, embedded software, machine learning, data pipelines, and
            multimedia processing, across a wide range of industries.
          </p>

          <p>
            Here is a peek:
          </p>

          <.highlight_elixir>
            iex> "Elixir" |> String.graphemes() |> Enum.frequencies()
            %{"E" => 1, "i" => 2, "l" => 1, "r" => 1, "x" => 1}
          </.highlight_elixir>

          <p>
            Check our <a href="https://hexdocs.pm/elixir/introduction.html">Getting Started guide</a>
            and our <a href="/learning.html">Learning page</a>
            to begin your journey with Elixir. Or keep scrolling for an overview of the platform, language, and tools.
          </p>
        </div>
      </div>

    </div>
    """
  end
end
