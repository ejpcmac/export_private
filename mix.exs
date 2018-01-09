defmodule ExportPrivate.Mixfile do
  use Mix.Project

  @version "1.0.0"
  @repo_url "https://github.com/ejpcmac/export_private"

  def project do
    [
      app: :export_private,
      version: @version,
      elixir: "~> 1.5",
      deps: deps(),
      docs: [
        main: "ExportPrivate",
        source_url: @repo_url,
        source_ref: "v#{@version}"
      ],
      package: package(),
      description: "Export private functions for tests."
    ]
  end

  def application do
    []
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end

  defp package do
    [
      maintainers: ["Jean-Philippe Cugnet"],
      licenses: ["WTFPL"],
      links: %{"GitHub" => @repo_url}
    ]
  end
end
