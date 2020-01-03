5.times do
    Movie.create(title: "what", genre: "good", rating: 4, description: "this was good", cast: "this cast")
end

puts "movie sedding success"






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
