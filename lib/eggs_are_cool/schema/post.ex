defmodule EggsAreCool.Schema.Post do
  use Ecto.Schema

  schema "posts" do
    field :title, :string
    field :body, :string
    has_many :comments, Comment
    timestamps()
  end
end
