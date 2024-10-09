defmodule Elixirlang.CasesPage do
  use Tableau.Page,
    layout: Elixirlang.SidebarLayout,
    permalink: "/cases"

  use Phoenix.Component
  # import Elixirlang.Components

  def template(assigns) do
    ~H"""
    <h1>Cases</h1>

    <p>Click on the cases below to learn more about how companies across different industries are using the power of Elixir and its ecosystem to create and grow their businesses. Cases are listed in the order they have been published.</p>

    <div class="cases-boxes">
      {% assign sorted_posts = site.categories["Elixir in Production"] | sort: 'date' %}
      {% for post in sorted_posts %}
        <a class="cases-box" href="{{ post.url }}" title="Case: {{ post.title }}">
          {% if post.logo == nil %}
            <div class="cases-image" style="background-image: url('/images/cases/logos/default-image.png')"></div>
          {% else %}
            <div class="cases-image" style="background-image: url('{{ post.logo }}')"></div>
          {% endif %}
          <div class="cases-tag">
            {% for tag in post.tags %}
              <span>#{{tag}}</span>
            {% endfor %}
          </div>
        </a>
      {% endfor %}
    </div>

    <p></p>
    """
  end
end
