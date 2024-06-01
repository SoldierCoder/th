import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :graphql_server, GraphqlServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "shTRSgAy4yblyanfSUOr+6m2q3KN1g0gQM3c4fV8pI9m9GREb9VXbpkP5UDTn7Ef",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :phoenix_live_view,
  # Enable helpful, but potentially expensive runtime checks
  enable_expensive_runtime_checks: true
