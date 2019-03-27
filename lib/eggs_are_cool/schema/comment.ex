defmodule EggsAreCool.Schema.Comment do
  use Ecto.Schema
  
  schema "comments" do
    field :author, :string
    field :body, :string
    belongs_to :post, Post
    timestamps()
  end
end