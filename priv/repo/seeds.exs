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
  body: "You can scramble them or have them sunny side up! Some eggs are laid by female animals of many different species, including birds, reptiles, amphibians, mammals, and fish, and have been eaten by humans for thousands of years.[1] Bird and reptile eggs consist of a protective eggshell, albumen (egg white), and vitellus (egg yolk), contained within various thin membranes. The most commonly consumed eggs are chicken eggs. Other poultry eggs including those of duck and quail also are eaten. Fish eggs are called roe and caviar."
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "Have you had your daily dose of cholesterol?",
  body:"Don't delay! Eat as many eggs as you can within a 24-hour period to ensure maximum effectiveness! Bacon and eggs being cooked in a skillet.Some eggs are laid by female animals of many different species, including birds, reptiles, amphibians, mammals, and fish, and have been eaten by humans for thousands of years.[1] Bird and reptile eggs consist of a protective eggshell, albumen (egg white), and vitellus (egg yolk), contained within various thin membranes. The most commonly consumed eggs are chicken eggs. Other poultry eggs including those of duck and quail also are eaten. Fish eggs are called roe and caviar. Egg yolks and whole eggs store significant amounts of protein and choline,[2][3] and are widely used in cookery. Due to their protein content, the United States Department of Agriculture formerly categorized eggs as Meats within the Food Guide Pyramid (now MyPlate).[2] Despite the nutritional value of eggs, there are some potential health issues arising from cholesterol content, salmonella contamination, and allergy to egg proteins."
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "Eggs: your premier source of selenium",
  body: "Would you rather have the strength of twenty eggs, or the wisdom of one? Chickens and other egg-laying creatures are kept widely throughout the world and mass production of chicken eggs is a global industry. In 2009, an estimated 62.1 million metric tons of eggs were produced worldwide from a total laying flock of approximately 6.4 billion hens.[4] There are issues of regional variation in demand and expectation, as well as current debates concerning methods of mass production. In 2012, the European Union banned battery husbandry of chickens."
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "The possibilities are eggciting",
  body: "Poached or hard-boiled, you can't go wrong! Bird eggs have been valuable foodstuffs since prehistory, in both hunting societies and more recent cultures where birds were domesticated. The chicken probably was domesticated for its eggs (from jungle fowl native to tropical and subtropical Southeast Asia and Indian subcontinent) before 7500 BCE. Chickens were brought to Sumer and Egypt by 1500 BCE, and arrived in Greece around 800 BCE, where the quail had been the primary source of eggs.[5] In Thebes, Egypt, the tomb of Haremhab, dating to approximately 1420 BCE, shows a depiction of a man carrying bowls of ostrich eggs and other large eggs, presumably those of the pelican, as offerings.[6] In ancient Rome, eggs were preserved using a number of methods and meals often started with an egg course.[6] The Romans crushed the shells in their plates to prevent evil spirits from hiding there.[7] In the Middle Ages, eggs were forbidden during Lent because of their richness.[7] The word mayonnaise possibly was derived from moyeu, the medieval French word for the yolk, meaning center or hub."
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Post{
  title: "Why can't you tease egg whites?",
  body: "Because they can't take a yolk! Egg scrambled with acidic fruit juices were popular in France in the seventeenth century; this may have been the origin of lemon curd.[8] The dried egg industry developed in the nineteenth century, before the rise of the frozen egg industry.[9] In 1878, a company in St. Louis, Missouri started to transform egg yolk and egg white into a light-brown, meal-like substance by using a drying process.[9] The production of dried eggs significantly expanded during World War II, for use by the United States Armed Forces and its allies.[9] In 1911, the egg carton was invented by Joseph Coyle in Smithers, British Columbia, to solve a dispute about broken eggs between a farmer in Bulkley Valley and the owner of the Aldermere Hotel. Early egg cartons were made of paper."
})

# Recipe Seeds
EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "Hard-Boiled",
  description:
    "Place your eggs in a pot and cover with cold water by 1 inch. Bring to a boil over medium-high heat, then cover, remove from the heat and set aside 8 to 10 minutes. Drain, cool in ice water and peel.",
  difficulty: 2
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "French Omelette",
  description:
    "A classic French omelette has a smooth, silky exterior with little to no browning that cradles a tender, moist, soft-scrambled interior. The technique for making one is something every cook should learn—as long as you know these key steps, it's easy.",
  difficulty: 6
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "Poached",
  description:
    "A poached egg is an egg that has been cooked, outside the shell, by poaching, as opposed to simmering or boiling liquid. This method of preparation is favored for eggs, as it can yield more delicately cooked eggs than cooking at higher temperatures such as with boiling water.",
  difficulty: 8
})

EggsAreCool.Repo.insert!(%EggsAreCool.Schema.Recipe{
  name: "Egg Pancakes",
  description:
    "Also known as a stack of sunny side ups, or a over easies, if that's your thing. Pair it with some delectable strips of turkey bacon and a generous drizzle of maple syrup.",
  difficulty: 9000
})
