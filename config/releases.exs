import Config

config :ancestry, AncestryWeb.Endpoint, secret_key_base: System.get_env("SECRET")

config :ancestry, Ancestry.Repo,
  username: System.get_env("PG_USER"),
  password: System.get_env("PG_PASS"),
  database: System.get_env("PG_DB"),
  hostname: System.get_env("PG_HOST"),
  pool_size: 10
