# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :devvy,
  ecto_repos: [Devvy.Repo]

# Configures the endpoint
config :devvy, DevvyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Sibb44BWUumOOX0AJ2AzEYAyKOOo1+gCeaWGIj1KrbgJ5QrxeeveEwo7YBUiVToL",
  render_errors: [view: DevvyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Devvy.PubSub,
  live_view: [signing_salt: "HHNm2qlE"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
