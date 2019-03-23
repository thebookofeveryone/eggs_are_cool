defmodule EggsAreCoolWeb.Router do
  use EggsAreCoolWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EggsAreCoolWeb do
    pipe_through :browser

    get "/", PageController, :index

    # change to blog controller
    get "/blog", PageController, :blog
    # get "/blog/id", BlogController, :blog_id

    get "/recipes", PageController, :recipes
  end

  # Other scopes may use custom stacks.
  # scope "/api", EggsAreCoolWeb do
  #   pipe_through :api
  # end
end
