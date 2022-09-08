import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :iluvcoffee_phoenix, IluvcoffeePhoenixWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "eCcIo7rEEoii+QD3n9MO0L1EVr57hlH0aDXFM4ctySnnvsFWiVoNuDwfAQPm2g0H",
  server: false

# In test we don't send emails.
config :iluvcoffee_phoenix, IluvcoffeePhoenix.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
