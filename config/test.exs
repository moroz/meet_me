import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :meet_me, MeetMe.Repo,
  username: "postgres",
  password: "postgres",
  database: "meet_me_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :meet_me, MeetMeWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "xNfwDG8Mm0GVWrliu0hJXXOCtt2fEIStFzN7w5mTvO0U6VQLaplq6L7H7LVJHzLN",
  server: false

# In test we don't send emails.
config :meet_me, MeetMe.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime