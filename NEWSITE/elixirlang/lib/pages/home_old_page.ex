# defmodule Elixirlang.HomePage do
#   use Tableau.Page,
#     layout: Elixirlang.RootLayout,
#     permalink: "/home"
#
#   use Phoenix.Component
#
#   def template(assigns) do
#     ~H"""
#     <div>
#       <div class="hfeed">
#         <div class="hentry post">
#           <div class="entry-summary">
#             <h5>Elixir is a dynamic, functional language for building scalable and maintainable applications.</h5>
#
#             <p>Elixir runs on the Erlang VM, known for creating low-latency, distributed, and fault-tolerant systems. These capabilities and Elixir tooling allow developers to be productive in several domains, such as web development, embedded software, machine learning, data pipelines, and multimedia processing, across a wide range of industries.</p>
#
#             <p>Here is a peek:</p>
#
#       {% highlight elixir %}
#       iex> "Elixir" |> String.graphemes() |> Enum.frequencies()
#       %{"E" => 1, "i" => 2, "l" => 1, "r" => 1, "x" => 1}
#       {% endhighlight %}
#
#             <p>Check our <a href="https://hexdocs.pm/elixir/introduction.html">Getting Started guide</a> and our <a href="/learning.html">Learning page</a> to begin your journey with Elixir. Or keep scrolling for an overview of the platform, language, and tools.
#                  </p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <div class="cases-header">
#             <h4>Companies using Elixir in production</h4>
#             <a href="/cases.html">See more cases →</a>
#           </div>
#
#           <div class="cases-boxes" id="shuffled-cases">
#             {% for post in site.categories["Elixir in Production"] %}
#               <a class="cases-box" href="{{ post.url }}" title="Case: {{ post.title }}">
#                 {% if post.logo == nil %}
#                   <div class="cases-image" style="background-image: url('/images/cases/logos/default-image.png')"></div>
#                 {% else %}
#                   <div class="cases-image" style="background-image: url('{{ post.logo }}')"></div>
#                 {% endif %}
#                 <div class="cases-tag">
#                   {% for tag in post.tags %}
#                     <span>#{{tag}}</span>
#                   {% endfor %}
#                 </div>
#               </a>
#             {% endfor %}
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h3>Platform features</h3>
#         </div>
#
#         <div class="hentry post">
#           <h4>Scalability</h4>
#           <div class="entry-summary">
#             <p>All Elixir code runs inside lightweight threads of execution (called processes) that are isolated and exchange information via messages:</p>
#
#       {% highlight elixir %}
#       current_process = self()
#
#       # Spawn an Elixir process (not an operating system one!)
#       spawn_link(fn ->
#         send(current_process, {:msg, "hello world"})
#       end)
#
#       # Block until the message is received
#       receive do
#         {:msg, contents} -> IO.puts(contents)
#       end
#       {% endhighlight %}
#
#             <p>Due to their lightweight nature, you can run hundreds of thousands of processes <i>concurrently</i> in the same machine, using all machine resources efficiently (vertical scaling). Processes may also communicate with other processes running on different machines to coordinate work across multiple nodes (horizontal scaling).</p>
#
#                  <p>
#                  Together with projects such as <a href="https://github.com/elixir-nx/">Numerical Elixir</a>, Elixir scales across cores, clusters, and GPUs.
#                 </p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h4>Fault-tolerance</h4>
#
#           <div class="entry-summary">
#             <p>The unavoidable truth about software in production is that <i>things will go wrong</i>. Even more when we take network, file systems, and other third-party resources into account.</p>
#
#             <p>To react to failures, Elixir supervisors describe how to restart parts of your system when things go awry, going back to a known initial state that is guaranteed to work:</p>
#
#       {% highlight elixir %}
#       children = [
#         TCP.Pool,
#         {TCP.Acceptor, port: 4040}
#       ]
#
#       Supervisor.start_link(children, strategy: :one_for_one)
#       {% endhighlight %}
#
#             <p>The combination of fault-tolerance and message passing makes Elixir an excellent choice for event-driven systems and robust architectures. Frameworks, <a href="https://www.nerves-project.org/">such as Nerves</a>, build on this foundation to enable productive development of reliable embedded/IoT systems.</p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h3>Language features</h3>
#         </div>
#
#         <div class="hentry post">
#           <h4>Functional programming</h4>
#
#           <div class="entry-summary">
#             <p>Functional programming promotes a coding style that helps developers write code that is short, concise, and maintainable. For example, pattern matching allows us to elegantly match and assert specific conditions for some code to execute:</p>
#
#       {% highlight elixir %}
#       def drive(%User{age: age}) when age >= 16 do
#         # Code that drives a car
#       end
#
#       drive(User.get("John Doe"))
#       #=> Fails if the user is under 16
#       {% endhighlight %}
#
#         <p>
#         Elixir relies on those features to ensure your software is working under the expected constraints. And when it is not, don't worry, supervisors have your back!
#         </p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h4>Extensibility and DSLs</h4>
#
#           <div class="entry-summary">
#         <p>
#         Elixir has been designed to be extensible, allowing developers naturally extend the language to particular domains, in order to increase their productivity.
#         </p>
#
#         <p>
#         As an example, let's write a simple test case using <a href="https://hexdocs.pm/ex_unit/">Elixir's test framework called ExUnit</a>:
#           </p>
#
#       {% highlight elixir %}
#       defmodule MathTest do
#         use ExUnit.Case, async: true
#
#         test "can add two numbers" do
#           assert 1 + 1 == 2
#         end
#       end
#       {% endhighlight %}
#
#       <p>
#       The <code>async: true</code> option allows <code>test</code>s to run in parallel, using as many CPU cores as possible, while the <code>assert</code> functionality can introspect your code, providing great reports in case of failures.
#       </p>
#
#         <p>
#         Other examples include using <a href="https://github.com/elixir-ecto/ecto">Elixir to write SQL queries</a>, <a href="https://github.com/elixir-nx/nx">compiling a subset of Elixir to the GPU</a>, and more.
#         </p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h3>Tooling features</h3>
#         </div>
#
#         <div class="hentry post">
#           <h4>A growing ecosystem</h4>
#
#           <div class="entry-summary">
#         <p>
#         Elixir ships with a great set of tools to ease development. <a href="https://hexdocs.pm/mix/">Mix is a build tool</a> that allows you to easily create projects, manage tasks, run tests and more:
#              </p>
#
#       <pre><code>$ mix new my_app
#       $ cd my_app
#       $ mix test
#       <span style="color:#919D41">.</span>
#
#       Finished in 0.04 seconds (0.04s on load, 0.00s on tests)
#       <span style="color:#919D41">1 test, 0 failures</span>
#       </code></pre>
#
#                  <p>
#                  Mix also integrates with the <a href="https://hex.pm/">Hex package manager</a> for dependency management and <a href="https://hexdocs.pm/">hosting documentation</a> for the whole ecosystem.
#                  </p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h4>Interactive development</h4>
#
#           <div class="entry-summary">
#                  <p>
#                  Tools like <a href="https://hexdocs.pm/iex/">IEx (Elixir's interactive shell)</a> leverage the language and platform to provide auto-complete, debugging tools, code reloading, as well as nicely formatted documentation:
#                  </p>
#
#       {% highlight text %}
#       $ iex
#       Interactive Elixir - press Ctrl+C to exit (type h() ENTER for help)
#       iex> h String.trim           # Prints the documentation
#       iex> i "Hello, World"        # Prints information about a data type
#       iex> break! String.trim/1    # Sets a breakpoint
#       iex> recompile               # Recompiles the current project
#       {% endhighlight %}
#
#                       </div>
#                       </div>
#                       </div>
#                  <p>
#                  Code notebooks like <a href="https://livebook.dev/">Livebook</a> allow you to interact with Elixir directly from your browser, including support for plotting, flowcharts, data tables, machine learning, and much more!
#                  </p>
#           </div>
#         </div>
#
#         <div class="hentry post">
#           <h4>Erlang compatible</h4>
#
#           <div class="entry-summary">
#                  <p>
#                  Elixir runs on the Erlang VM giving developers complete access to Erlang's ecosystem, used by companies like <a href="https://www.whatsapp.com">WhatsApp</a>, <a href="https://klarna.com">Klarna</a>, and many more to build distributed, fault-tolerant applications. An Elixir programmer can invoke any Erlang function with no runtime cost:
#                  </p>
#
#       {% highlight elixir %}
#       iex> :crypto.hash(:sha256, "Using crypto from Erlang OTP")
#       <<192, 223, 75, 115, ...>>
#       {% endhighlight %}
#
#                  <p>
#                  To learn more about Elixir, check our <a href="https://hexdocs.pm/elixir/introduction.html">Getting Started guide</a>.
#                  </p>
#       </div>
#     """
#   end
# end
