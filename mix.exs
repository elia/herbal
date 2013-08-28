defmodule Herbal.Mixfile do
  use Mix.Project

  def project do
    [ app: :herbal,
      version: "0.0.1",
      elixir: "~> 0.10.2-dev",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    # [ registered: [Herbal],
    [ registered: [:herbal],
      # applications: [:cauldron],
      mod: { Herbal, [] } ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, "~> 0.1", git: "https://github.com/elixir-lang/foobar.git" }
  defp deps do
    [
      {:urna, github: "meh/urna"}
    ]
  end
end

