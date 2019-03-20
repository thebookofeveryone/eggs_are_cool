defmodule EggsAreCool.Schema.Recipe do
  use Ecto.Schema
  
  schema "recipes" do
    field :name, :string
    field :description, :string
    field :difficulty, :integer
    timestamps()
  end
end