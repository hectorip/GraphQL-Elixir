# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :booksGraph,
  ecto_repos: [BooksGraph.Repo]

# Configures the endpoint
config :booksGraph, BooksGraph.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zegYhDFkCbazgtMi1NsToFlPXUVz7g61xzbQ0CuIVqfeS3ubavCBvYYKc5i3bJst",
  render_errors: [view: BooksGraph.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BooksGraph.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
