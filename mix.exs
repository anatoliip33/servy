defmodule Servy.Mixfile do
  use Mix.Project

  def project do
    [
      app: :servy,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :eex, :observer, :wx],
      mod: {Servy, []},
      env: [port: 3000]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 6.0"},
      {:httpoison, "~> 2.0"}
    ]
  end
end
