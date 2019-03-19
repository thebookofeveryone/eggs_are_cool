defmodule EggsAreCool.Repo.Migrations.AddPostsTable do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string, size: 50
      add :body, :text
      timestamps()
    end
  end
end
