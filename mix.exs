defmodule ElixirAmi.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_ami,
      name: "elixir_ami",
      version: "0.0.6",
      elixir: "~> 1.0",
      description: description,
      package: package,
      source_url: "https://github.com/marcelog/elixir_ami",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps
    ]
  end

  def application do
    [
      applications: [:logger],
      mod: {ElixirAmi, []}
    ]
  end

  defp description do
    """
Elixir client for the Asterisk AMI protocol.

Find the user guide in the github repo at: https://github.com/marcelog/elixir_ami.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Marcelo Gornstein"],
      licenses: ["Apache 2.0"],
      links: %{
        "GitHub" => "https://github.com/marcelog/elixir_ami"
      }
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.7", only: :dev},
      {:earmark, "~> 0.1", only: :dev}
    ]
  end
end
