# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :ancestry,
  ecto_repos: [Ancestry.Repo]

config :ancestry, Ancestry.Repo, types: Ancestry.PostgresTypes

# Configures the endpoint
config :ancestry, AncestryWeb.Endpoint,
  url: [host: "localhost", scheme: "http"],
  secret_key_base:
    "verysecretverysecretverysecretverysecretverysecretverysecretverysecretverysecret",
  render_errors: [view: AncestryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ancestry.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :ancestry, AncestryWeb.Endpoint,
  live_view: [
    signing_salt: "saltysalt"
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
