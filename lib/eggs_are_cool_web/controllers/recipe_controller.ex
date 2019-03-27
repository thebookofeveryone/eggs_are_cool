defmodule EggsAreCoolWeb.RecipeController do
  use EggsAreCoolWeb, :controller

  import Ecto.Query

  alias EggsAreCool.Repo
  alias EggsAreCool.Schema.Recipe

  # Get all Recipes
  def index(conn, _params) do
    recipes =
      Recipe
      |> Repo.all()
      |> Enum.map(fn post ->
        IO.inspect(Map.take(post, [:id, :name, :description, :difficulty, :inserted_at]))
      end)

    render(conn, "index.html", recipes: recipes)
  end

  # Show Recipe by ID
  def show(conn, %{"id" => id}) do
    post = Repo.get(Recipe, id)

    render(conn, "show.html", post: post)
  end

end
