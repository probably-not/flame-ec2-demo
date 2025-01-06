defmodule FlameEC2Demo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {
        FLAME.Pool,
        name: FlameEC2Demo.Pool,
        min: 0,
        max: 10,
        max_concurrency: 5,
        idle_shutdown_after: 30_000,
        log: :debug,
        auto_configure: true,
        key_name: System.get_env("AWS_SSH_KEY_NAME"),
        s3_bundle_url: System.get_env("RELEASE_BUNDLE_LOCATION")
      }
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: FlameEC2Demo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
