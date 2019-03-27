defmodule EggsAreCool.Schema.Comment do
  use Ecto.Schema
  
  schema "comments" do
    field :author, :string
    field :body, :string
    belongs_to :post, Post, [foreign_key: :post_id]
    # EggsAreCool.Schema.Post? full name? or auto-aliased?

    timestamps()
  end
end