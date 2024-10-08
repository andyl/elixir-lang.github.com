defmodule Elixirlang.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def old_template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          <%= [@page[:title], Elixirlang]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ") %>
        </title>

        <link rel="stylesheet" href="/css/site.css" />
      </head>

      <body>
        <main>
          <%= render(@inner_content) %>
        </main>
      </body>

      <%= if Mix.env() == :dev do %>
        <%= Phoenix.HTML.raw(Tableau.live_reload(assigns)) %>
      <% end %>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
          name="description"
          content="Welcome to Elixir, a dynamic, functional language designed for building scalable and maintainable applications"
        />
        <title>
          {% if page.title %}{{ page.title }} - {% endif %}The Elixir programming language
        </title>
        <link
          href="https://elixir-lang.org/atom.xml"
          rel="alternate"
          title="Elixir's Blog"
          type="application/atom+xml"
        />
        <link rel="stylesheet" type="text/css" href="/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/css/syntax.css" />
        <link rel="stylesheet" href="/js/icons/style.css" />
        <!--[if lt IE 8]><!-->
        <link rel="stylesheet" href="/js/icons/ie7/ie7.css" />
        <!--<![endif]-->
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <link
          rel="stylesheet"
          id="font-bitter-css"
          href="//fonts.googleapis.com/css?family=Bitter:400,700"
          type="text/css"
          media="screen"
        />
        <link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />
        <link
          rel="search"
          type="application/opensearchdescription+xml"
          title="elixir-lang.org"
          href="/opensearch.xml"
        />
        <script defer data-domain="elixir-lang.org" src="https://plausible.io/js/plausible.js">
        </script>
        <script defer src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
        </script>
        <script defer src="/js/index.js" type="text/javascript" charset="utf-8">
        </script>
        {% seo title=false %}
      </head>

      <body class="{{ page.section }}">
        <div id="container">
          <div class="wrap">
            <div id="header">
              <div id="branding">
                <a id="site-title" href="/" title="Elixir" rel="Home">
                  <img class="logo" src="/images/logo/logo.png" alt="Elixir Logo" />
                </a>
              </div>

              <div id="menu-primary" class="menu-container">
                <ul id="menu-primary-items">
                  <li class="menu-item home"><a class="spec" href="/">Home</a></li>
                  <li class="menu-item install"><a class="spec" href="/install.html">Install</a></li>
                  <li class="menu-item learning">
                    <a class="spec" href="/learning.html">Learning</a>
                  </li>
                  <li class="menu-item docs"><a class="spec" href="/docs.html">Docs</a></li>
                  <li class="menu-item getting-started">
                    <a class="spec" href="https://hexdocs.pm/elixir/introduction.html">Guides</a>
                  </li>
                  <li class="menu-item cases"><a class="spec" href="/cases.html">Cases</a></li>
                  <li class="menu-item blog"><a class="spec" href="/blog/">Blog</a></li>
                </ul>
              </div>
            </div>

            <div id="main">
              <div id="content"Old>
                <%= render(@inner_content) %>
              </div>
              <!-- #content -->
              <div id="sidebar-primary" class="sidebar">
                {% include search.html %}
                {% include important-links.html %}
              </div>
            </div>
            <!-- #main -->
            <div class="clear"></div>

            <div id="trademark">
              &copy; 2012–{{ 'now' | date: "%Y" }} The Elixir Team.<br />
              Elixir and the Elixir logo are <a href="/trademarks">registered trademarks of The Elixir Team</a>.
            </div>
          </div>
          <!-- .wrap -->
        </div>
        <!-- #container -->
      </body>
      <%= if Mix.env() == :dev do %>
        <%= Phoenix.HTML.raw(Tableau.live_reload(assigns)) %>
      <% end %>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end
end
