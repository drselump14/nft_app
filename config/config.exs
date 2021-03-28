# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :nft_app,
  ecto_repos: [NftApp.Repo]

# Configures the endpoint
config :nft_app, NftAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "G/YikeHp/rq/NdsrGX7FWTuSpAnfj+1Xv/M7QONKpKgdYqaQnT/2gBArq+lIsl0c",
  render_errors: [view: NftAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NftApp.PubSub,
  live_view: [signing_salt: "XNiQZlFw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
