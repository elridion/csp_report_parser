defmodule CspReportParser.MixProject do
  use Mix.Project

  def project do
    [
      app: :csp_report_parser,
      version: "0.2.0",
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
    []
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug, "~> 1.14"},
      {:ex_doc, "~> 0.20", only: :dev}
    ]
  end

  defp description do
    "Plug parser module to handle csp-report bodies"
  end

  defp docs do
    [
      main: "Plug.Parsers.CSP_REPORT",
      canonical: "http://hexdocs.pm/csp_report_parser",
      source_url: "https://github.com/elridion/csp_report_parser"
    ]
  end

  defp package() do
    [
      maintainers: ["Hans Bernhard Gödeke"],
      files: ~w(lib .formatter.exs mix.exs README* LICENSE),
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/elridion/csp_report_parser"
      }
    ]
  end
end
