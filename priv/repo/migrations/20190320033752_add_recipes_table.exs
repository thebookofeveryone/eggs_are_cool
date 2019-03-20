defmodule EggsAreCool.Repo.Migrations.AddRecipesTable do
  use Ecto.Migration

  def change do
    create table(:recipes) do
      add :name,        :string, size: 50
      add :description, :text
      add :difficulty,  :integer

      timestamps()
  end
end
