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

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "Have you had your daily dose of cholesterol?",
  body: "Don't delay! Eat as many eggs as you can within a 24-hour period to ensure maximum effectiveness!"
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "Eggs: your premier source of selenium",
  body: "Would you rather have the strength of twenty eggs, or the tenacity of one?"
})