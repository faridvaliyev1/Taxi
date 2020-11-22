# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :takso,
  ecto_repos: [Takso.Repo]

# Configures the endpoint
config :takso, TaksoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OG8/yt0ZBZBGYeqy97MKbBNpaOrJ/Jx+di+pwYTbOU5hHIG8/+/G3SMhSrr5iS9+",
  render_errors: [view: TaksoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Takso.PubSub,
  live_view: [signing_salt: "SgltIV7q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
