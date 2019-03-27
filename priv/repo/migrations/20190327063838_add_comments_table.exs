defmodule EggsAreCool.Repo.Migrations.AddCommentsTable do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :author, :string, size: 30
      add :body, :text
    # how to add belongs_to association? 

      timestamps()
    end

  end
end
