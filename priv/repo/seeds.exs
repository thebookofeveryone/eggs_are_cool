# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     EggsAreCool.Repo.insert!(%EggsAreCool.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "The best breakfast food",
  body: "You can scramble them or have them sunny side up!"
})
