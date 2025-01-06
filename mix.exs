defmodule FlameEC2Demo.MixProject do
  use Mix.Project

  def project do
    [
      app: :flame_ec2_demo,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :xmerl],
      mod: {FlameEC2Demo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:flame, "~> 0.5.0"},
      {:flame_ec2, "~> 0.0.1-rc-7"},
      {:jason, "~> 1.2"}
    ]
  end
end
