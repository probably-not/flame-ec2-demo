import Config

# config/runtime.exs is executed for all environments, including
# during releases. It is executed after compilation and before the
# system starts, so it is typically used to load production configuration
# and secrets from environment variables or elsewhere. Do not define
# any compile-time configuration in here, as it won't be applied.
# The block below contains prod specific runtime configuration.

if config_env() == :prod do
  config :flame, :backend, FlameEC2

  config :flame, FlameEC2,
    log: :debug,
    auto_configure: true,
    key_name: System.get_env("AWS_SSH_KEY_NAME"),
    s3_bundle_url: System.get_env("RELEASE_BUNDLE_LOCATION")
end
