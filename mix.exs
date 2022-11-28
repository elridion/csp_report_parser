defmodule CspReportParser.MixProject do
  use Mix.Project

  def project do
    [
      app: :csp_report_parser,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      docs: docs(),
      dialyzer: [plt_add_apps: [:mix]]
      # elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.14.0"},
      {:ex_doc, "~> 0.20", only: :dev}
    ]
  end

  defp description do
    "Plug parser module to handle csp-report bodies"
  end

  defp docs do
    [
      main: "CSP Report Parser",
      canonical: "http://hexdocs.pm/csp_report_parser",
      source_url: "https://github.com/elridion/csp_report_parser"
    ]
  end

  defp package() do
    [
      maintainers: ["Hans Bernhard Gödeke"],
      files: ~w(lib .formatter.exs mix.exs README* LICENSE),
      licenses: ["GPL-3.0-only"],
      links: %{
        "GitHub" => "https://github.com/elridion/csp_report_parser"
      }
    ]
  end
end
