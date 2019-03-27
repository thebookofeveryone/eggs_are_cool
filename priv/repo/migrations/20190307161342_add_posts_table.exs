defmodule EggsAreCool.Repo.Migrations.AddPostsTable do
  use Ecto.Migration

  def change do
    # should the argument be an atom or a string? docs has a string
    create table(:posts) do
      add :title, :string, size: 50
      add :body, :text
      # how to add has_may association? 

      timestamps()
    end
  end
end
