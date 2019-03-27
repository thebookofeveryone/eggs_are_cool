defmodule EggsAreCool.Schema.Comment do
  use Ecto.Schema
  
  schema "comments" do
    field :author, :string
    field :body, :string
    belongs_to :post, Post
    # EggsAreCool.Schema.Post? full name? or auto-aliased?
    #foreign_key: :post_id

    timestamps()
  end
end