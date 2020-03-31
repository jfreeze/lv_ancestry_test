import Config

config :ancestry, AncestryWeb.Endpoint,
  url: [host: "localhost", scheme: "https", port: 443],
  http: [ip: {127, 0, 0, 1}, port: 4000],
  server: true,
  version: Mix.Project.config()[:version],
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info

config :ancestry, :environment, :prod
