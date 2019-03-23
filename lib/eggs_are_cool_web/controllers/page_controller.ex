defmodule EggsAreCoolWeb.PageController do
  use EggsAreCoolWeb, :controller
  import Ecto.Query

  alias EggsAreCool.Repo
  alias EggsAreCool.Schema.Post

  def index(conn, _params) do
    # posts =
    #   Post
    #   |> EggsAreCool.Repo.all()
    #   |> Enum.map(fn post ->
    #     IO.inspect(Map.take(post, [:title, :body, :inserted_at]))
    #   end)
    #   # want to sort by inserted_at(~N[2019-03-19 14:33:28])
    #   # naive date type
    #   # What format is this (check Postgres, Ecto docs)
    #   |> Enum.sort()

    render(conn, "index.html", posts: [])
  end

  # Blog Route
  def blog(conn, _params) do
    query =
      Post
      |> order_by(desc: :inserted_at)

    posts =
      query
      |> Repo.all()

      # try logging what we get back from the repo
      # do we need to give IO.inspect an argument? (piped from the Repo.all return value?)
      |> Enum.map(fn post ->
        IO.inspect(Map.take(post, [:title, :body, :inserted_at]))
      end)

    render(conn, "blog.html", posts: posts)
  end

  # Recipes Route
  # def recipes(conn, _params) do
  # Recipe
  # |> EggsAreCool.Repo.all()
  # |> Enum.map (fn recipe -> 
  # IO.inspect(Map.take(recipe, [:name, :description, :difficulty]))
  # end)
  # end
end
