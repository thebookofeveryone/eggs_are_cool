defmodule EggsAreCool.Repo do
  use Ecto.Repo,
    otp_app: :eggs_are_cool,
    adapter: Ecto.Adapters.Postgres
end
