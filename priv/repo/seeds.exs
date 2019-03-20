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

# Post Seeds
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

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "The possibilities are eggciting",
  body: "Poached or hard-boiled, you can't go wrong!"
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "Why can't you tease egg whites?",
  body: "Because they can't take a yolk!"
})

# Recipe Seeds
EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "Hard-Boiled",
  description: "Place your eggs in a pot and cover with cold water by 1 inch. Bring to a boil over medium-high heat, then cover, remove from the heat and set aside 8 to 10 minutes. Drain, cool in ice water and peel.",
  difficulty: 2
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "French Omelette",
  description: "A classic French omelette has a smooth, silky exterior with little to no browning that cradles a tender, moist, soft-scrambled interior. The technique for making one is something every cook should learn—as long as you know these key steps, it's easy.",
  difficulty: 6
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "Poached",
  description: "A poached egg is an egg that has been cooked, outside the shell, by poaching, as opposed to simmering or boiling liquid. This method of preparation is favored for eggs, as it can yield more delicately cooked eggs than cooking at higher temperatures such as with boiling water.",
  difficulty: 8
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "Egg Pancakes",
  description: "Also known as a stack of sunny side ups, or a over easies, if that's your thing. Pair it with some delectable strips of turkey bacon and a generous drizzle of maple syrup.",
  difficulty: 9000
})


