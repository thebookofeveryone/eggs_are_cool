defmodule EggsAreCoolWeb.CommentController do
  use EggsAreCoolWeb, :controller

  import Ecto.Query

  alias EggsAreCool.Repo
  alias EggsAreCool.Schema.Comment

  # Get all Comments for a Post
  def index(conn, post_id) do
    comments =
      Comment
      |> where(post_id: ^post_id)
      |> Repo.all()
    
    # this is the comments_path :index, how to inject into post_path :show?
    render(conn, "index.html", comments: comments)
  end

  # # Create a Comment for a Post
  # def create(conn, _params) do
    # extrapolate author, body from form... how to handle POST from client-facing server?
    # post id should be passed through params?
    # use Ecto to interface with DB, create new post
    # return tuple with :ok / :error status
  # end

  # # Delete a Comment on a Post
  # def delete(conn, %{"id" => id}) do
  # end

  # Recipes for reference:
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
