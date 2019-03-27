defmodule EggsAreCool.Schema.Comment do
  use Ecto.Schema
  
  schema "comments" do
    field :body, :string
    field :author, :string
    belongs_to :post, Post
    timestamps()
  end
end