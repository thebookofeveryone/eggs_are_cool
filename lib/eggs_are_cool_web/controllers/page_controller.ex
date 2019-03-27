defmodule EggsAreCoolWeb.PageController do
  use EggsAreCoolWeb, :controller
  import Ecto.Query

  alias EggsAreCool.Repo
  alias EggsAreCool.Schema.Post
  alias EggsAreCool.Schema.Recipe

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
end
