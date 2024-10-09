defmodule Elixirlang.Content.Sidebar do
  use Phoenix.Component

  def search(assigns) do
    ~H"""
    <div>
      <div class="widget news">
        <h3>News: <a href="/blog/2024/06/12/elixir-v1-17-0-released/">Elixir v1.17 released</a></h3>
      </div>

      <div class="widget search">
        <form
          method="post"
          role="search"
          id="search-form"
          class="search-form"
          action="https://duckduckgo.com/?kg=p"
          onsubmit="document.getElementById('searchq').value = document.getElementById('searchfield').value + ' (site:elixir-lang.org | site:hexdocs.pm/elixir | site:hexdocs.pm/mix | site:hexdocs.pm/eex | site:hexdocs.pm/logger | site:hexdocs.pm/iex | site:hexdocs.pm/ex_unit)'; return true;"
        >
          <input type="hidden" id="searchq" name="q" value="" aria-hidden="true" />

          <input
            class="search-text"
            type="search"
            placeholder="Search..."
            id="searchfield"
            aria-label="Search box"
          />
          <input
            class="search-submit button"
            name="submit"
            type="submit"
            value="Search"
            aria-label="Search button"
          />
        </form>
      </div>
    </div>
    """
  end

  def important_links(assigns) do
    ~H"""
    <div>
      <div class="widget">
        <h3 class="widget-title">Important links</h3>
        <ul>
          <li class="menu-item development"><a class="spec" href="/development.html">Development & Team</a></li>
          <li><a class="spec" href="https://github.com/elixir-lang/elixir">Source code & issues tracker</a></li>
        </ul>
      </div>

      <div id="mini-docu" class="widget">
        <a href="https://cult.honeypot.io/originals/elixir-the-documentary">
          <div class="mini-docu-cta">
            <div class="mini-docu-copy">Watch the Elixir<br />mini-documentary!</div>
          </div>
        </a>
      </div>

      <.events/>

      <div class="widget">
        <h3 class="widget-title">Join the Community</h3>
        <ul>
          <li><a class="spec" href="https://hex.pm">Hex.pm package manager</a></li>
          <li><a class="spec" href="https://twitter.com/elixirlang">@elixirlang on Twitter</a></li>
          <li><a class="spec" href="irc://irc.libera.chat/elixir">#elixir on irc.libera.chat</a></li>
          <li><a class="spec" href="http://elixirforum.com">Elixir Forum</a></li>
          <li><a class="spec" href="https://elixir-slack.community">Elixir on Slack</a></li>
          <li><a class="spec" href="https://discord.gg/elixir">Elixir on Discord</a></li>
          <li><a class="spec" href="https://github.com/elixir-lang/elixir/wiki/Code-Editor-Support">IDE/Editor support</a>
          </li>
          <li><a class="spec" href="https://www.meetup.com/topics/elixir/">Meetups around the world</a></li>
          <li><a class="spec" href="https://github.com/elixir-lang/elixir/wiki/Hiring-Elixir-Developers">Jobs and hiring
              (community wiki)</a></li>
          <li><a class="spec" href="https://github.com/elixir-lang/elixir/wiki">Events and resources (community wiki)</a></li>
        </ul>
      </div>

      <div id="eef" class="widget">
        <a href="https://erlef.org/" title="Join the Erlang Ecosystem Foundation"><img src="/images/logo/eef.png"
            alt="Join the Erlang Ecosystem Foundation" width="174" style="margin-top:-10px" /></a>
      </div>




    </div>
    """
  end

  def events(assigns) do
    ~H"""
      <div class="widget events">
        <h3 class="widget-title">Upcoming events</h3>
        <a href="https://2024.elixirconf.com/">
          <img src="https://2022.elixirconf.com/images/resources/elixirconf-logo.svg" alt="ElixirConf" />
          <br />
          <ul>
            <li><b>Aug 27-30, 2024</b> - Orlando, FL.</li>
            <li><b>10 training classes, 60+ speakers</b></li>
          </ul>
        </a>
      </div>
    """
  end

end
