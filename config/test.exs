import Config

# Configure your database
config :ancestry, Ancestry.Repo,
  username: "postgres",
  password: "postgres",
  database: "ancestry_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ancestry, AncestryWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Config email library
config :ancestry, Ancestry.MailingList.Mailer, adapter: Swoosh.Adapters.Test
