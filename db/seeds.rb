# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
World.destroy_all
Comment.destroy_all 
 u = World.create(name: "FISHES", seed: "wVJCZahxX8", description: "Lots of places to fish and has trader Haldor not to far from spawn to get fishing rod and bait.", image_url:"https://i.gyazo.com/00ca03c0237fb9f64e3c8a67596a3a90.png", creator:"N/A")
 v = World.create(name: "IronORE", seed: "DDLGBABY", description: "Swamp location with ~20+ Crypts near world spawn", image_url: "https://i.gyazo.com/c768475cbac366b3df6126facc2d3436.png", creator: "N/A")
 World.create(name: "Steintoft", seed: "E59f0Y5Ejq", description: "Great beginner location lots of meadows and black forest full of resources(berries, boar, deer, copper) nearby spawn.", image_url: "https://i.gyazo.com/01baf3e0569730a0574f589c79eb5972.jpg", creator: "xadrox")
 World.create(name: "Torstenstead", seed: "vM38IEWQs8", description: "Good beginner world, safe spawn in meadows has lots of fishing location and ocean to sail.", image_url: "https://i.gyazo.com/e9983332fa84ffe1e5f6938c1fb96eed.png", creator: "xadrox")

 Comment.create(world_id: u.id, content: "Awesome find! I love fishing in this game!", author: "testuser123")
 Comment.create(world_id: v.id, content: "Crazy find, I need more iron ore stat.", author: "eitherOre")