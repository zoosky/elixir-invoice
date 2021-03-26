# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :invoice,
  ecto_repos: [Invoice.Repo]

# Configures the endpoint
config :invoice, InvoiceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1pEOVYtAlKdwIotJN/u4hQBVViKlPfAjXiuB19etXKeK1g64BHqKPY2fNR5HVyRc",
  render_errors: [view: InvoiceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Invoice.PubSub,
  live_view: [signing_salt: "c1s8+LvK"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
