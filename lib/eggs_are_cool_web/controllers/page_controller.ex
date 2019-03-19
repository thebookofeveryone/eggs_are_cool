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

  # def blog(conn, _params) do
  #   Post
  #   |> EggsAreCool.Repo.all()
    # try logging what we get back from the repo
  #   |> IO.inspect

  #   render(conn, "blog.html", posts: posts)
  # end
end
