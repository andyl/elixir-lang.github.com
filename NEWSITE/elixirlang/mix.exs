defmodule Elixirlang.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixirlang,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # {:tableau, path: "~/src/tableau"},
      {:tableau, "~> 0.18"},
      {:phoenix_live_view, "~> 0.20"},
      {:rustler, "~> 0.0"},
      {:solid, "~> 0.0"},
      # {:conpipe, "~> 0.0"},
      {:conpipe, path: "~/src/Lib/conpipe"},
    ]
  end
end
