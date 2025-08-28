# SPDX-License-Identifier: MIT
# Copyright (c) 2025-present K. S. Ernest (iFire) Lee

defmodule AriaSimpleTravel.MixProject do
  use Mix.Project

  def project do
    [
      app: :aria_simple_travel,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger],
    ]
  end

  defp deps do
    [
      # Internal dependencies - AriaEngine integration
      {:aria_hybrid_planner, git: "https://github.com/V-Sekai-fire/aria-hybrid-planner.git"},
      {:aria_state, git: "https://github.com/V-Sekai-fire/aria-hybrid-planner.git", sparse: "apps/aria_state", override: true},
      # External dependencies
      {:jason, "~> 1.4"},
      {:mox, "~> 1.0", only: :test},
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end
end
