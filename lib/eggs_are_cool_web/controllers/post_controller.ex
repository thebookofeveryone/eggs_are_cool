defmodule EggsAreCoolWeb.PostController do
  use EggsAreCoolWeb, :controller

  import Ecto.Query

  alias EggsAreCool.Repo
  alias EggsAreCool.Schema.Post

  # Get all Posts
  def index(conn, _params) do
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

    render(conn, "posts.html", posts: posts)
  end

  # Show Post by ID
  # def show(conn, id) do
  #   post = Repo.get(Post, id)

  #   render(conn, "post.html",)
  # end



end
