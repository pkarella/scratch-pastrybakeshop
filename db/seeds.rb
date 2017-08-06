# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all


products = [['foo','lorem ipsum',2]
]

20.times do |index|
products.each do |name, description,cost|
  Product.create!(name: name, description: description, cost: cost)
end
end
p "Created #{Product.count} products"
