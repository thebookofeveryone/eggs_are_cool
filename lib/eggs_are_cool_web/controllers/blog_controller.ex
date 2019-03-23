defmodule EggsAreCoolWeb.BlogController do
  use EggsAreCoolWeb, :controller

  import Ecto.Query

  alias EggsAreCool.Repo
  alias EggsAreCool.Schema.Post

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
end
