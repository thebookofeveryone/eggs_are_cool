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
    recipe = Repo.get!(Recipe, id)

    render(conn, "show.html", recipe: recipe)
  end

  # Delete Recipe by ID
  # when to use ! error-raising version vs without !
  # def delete(conn, %{"id" => id}) do
  #   recipe = Repo.get!(Recipe, id)

  # # I don't understand the purpose of case here
  #   case Repo.delete recipe do
  # # are these return values conditional? how do I handle these tuples?
  #     {:ok, struct}
  #     {:error, changeset}
  #   end
  # end

end
