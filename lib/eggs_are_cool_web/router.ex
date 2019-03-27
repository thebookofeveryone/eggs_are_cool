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
    
    resources "/recipes", RecipeController, only: [:index, :show, :new, :edit, :delete]

    resources "/posts", PostController, only: [:index, :show]
    # these are comments on each post. should they be in their own controller? Is this considered a nested resource?
    resources "/comments", CommentController, only: [:index, :create, :delete]

  end

  # Other scopes may use custom stacks.
  # scope "/api", EggsAreCoolWeb do
  #   pipe_through :api
  # end
end
