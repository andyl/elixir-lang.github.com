defmodule Elixirlang.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

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
          <%= [@page[:title], Elixirlang]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ") %>
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
        <script defer src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
        </script>
        <script defer src="/js/index.js" type="text/javascript" charset="utf-8">
        </script>
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
                  <li class="menu-item install"><a class="spec" href="/install">Install</a></li>
                  <li class="menu-item learning">
                    <a class="spec" href="/learning">Learning</a>
                  </li>
                  <li class="menu-item docs"><a class="spec" href="/docs">Docs</a></li>
                  <li class="menu-item getting-started">
                    <a class="spec" href="https://hexdocs.pm/elixir/introduction.html">Guides</a>
                  </li>
                  <li class="menu-item cases"><a class="spec" href="/cases">Cases</a></li>
                  <li class="menu-item blog"><a class="spec" href="/blog/">Blog</a></li>
                </ul>
              </div>
            </div>

            <div>
              <%= render(@inner_content) %>
            </div>

            <div class="clear"></div>

            <div id="trademark">
              &copy; 2012–<%= Date.utc_today().year %> The Elixir Team.<br />
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
