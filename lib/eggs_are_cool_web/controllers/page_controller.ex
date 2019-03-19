defmodule EggsAreCoolWeb.PageController do
  use EggsAreCoolWeb, :controller
  alias EggsAreCool.Repo

  alias EggsAreCool.Schema.Post

  def index(conn, _params) do
    posts =
      Post
      |> EggsAreCool.Repo.all()
      |> Enum.map(fn post ->
        IO.inspect(Map.take(post, [:title, :body]))
      end)

    render(conn, "index.html", posts: posts)
  end
end
