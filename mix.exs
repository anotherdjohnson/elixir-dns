defmodule DNS.Mixfile do
  use Mix.Project

  def project do
    [app: :dns,
     version: "0.0.4",
     elixir: "~> 1.2 or ~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    # TODO: switch back to published `socket` once the PR is merged
    [{:socket, "~> 0.3.5"},
     {:ex_doc, ">= 0.0.0", only: [:dev]},
     {:earmark, ">= 0.0.0", only: [:dev]}]
  end

  defp description do
  """
  DNS library for Elixir. Currently, the package provides:

  - Elixir structs to interface with `inet_dns` module.

  - DNS.Server behavior

  - DNS.Client

  Note: the `inet_dns` module is considered internal to Erlang and subject to
  change. If this happened this library will be updated to accommodate for that,
  but for now `inet_dns` is simple and worked for me.
  """
  end

  defp package do
    [maintainers: ["Tung Dao"],
     licenses: ["BSD-3-Clauses"],
     links: %{"GitHub" => "https://github.com/tungd/elixir-dns",
              "API Reference" => "http://hexdocs.pm/dns/0.0.3/api-reference.html"}]
  end
end
