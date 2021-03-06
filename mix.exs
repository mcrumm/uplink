defmodule Uplink.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :uplink,
      version: @version,
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp docs do
    [
      main: "Uplink",
      source_url: "https://github.com/elixir-uplink/uplink/tree/master/uplink",
      source_ref: "v#{@version}",
      extras: [
        "README.md"
      ],
      deps: [
        telemetry: "https://hexdocs.pm/telemetry",
        telemetry_poller: "https://hexdocs.pm/telemetry_poller"
      ]
    ]
  end

  defp description do
    """
    A simple abstraction for standardized observability with telemetry and more.
    """
  end

  defp package do
    [
      maintainers: ["Bryan Naegele"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/elixir-uplink/uplink/tree/main/uplink"
      }
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.23", only: [:dev, :docs]},
      {:telemetry, "~> 0.4"},
      {:telemetry_metrics, "~> 0.6"},
      {:telemetry_poller, "~> 0.5"},
      {:telemetry_registry, "~> 0.2"}
    ]
  end
end
