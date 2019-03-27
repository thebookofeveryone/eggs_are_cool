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
    
    # is there a way to query limit the characters in post.body in the query?

    posts =
      query
      |> Repo.all()
      |> Enum.map(fn post ->
        IO.inspect(Map.take(post, [:title, :body, :id, :inserted_at]))
      end)

    render(conn, "index.html", posts: posts)
  end

  # Show Post by ID
  def show(conn, %{"id" => id}) do
    post = Repo.get(Post, id)

    render(conn, "show.html", post: post)
  end

end
