import Config

# Configures Elixir's Logger
config :logger, :console,
  level: :debug,
  format: "$time $metadata[$level] $message\n",
  metadata: :all,
  handle_otp_reports: true,
  handle_sasl_reports: true

config :flame, :backend, FLAME.LocalBackend

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
