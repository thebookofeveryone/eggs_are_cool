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
  # end

  # # Delete a Comment on a Post
  # def delete(conn, %{"id" => id}) do
  # end

end
