# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :ecommerce,
  ecto_repos: [Ecommerce.Repo]

config :ecommerce_web,
  ecto_repos: [Ecommerce.Repo],
  generators: [context_app: :ecommerce]

# Configures the endpoint
config :ecommerce_web, EcommerceWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sg4990LldJavMl6isXhSXoBYmElw77Nf8yx9lzRYoUv1vqnqEv3V83nbiGe6YRBX",
  render_errors: [view: EcommerceWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Ecommerce.PubSub,
  live_view: [signing_salt: "etfHqYL4"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
