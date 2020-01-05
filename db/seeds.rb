require 'faker'

genre = ["horror", "sifi", "romance", "action", "comedy", "thriller"]

def casts
cast = []
6.times do
    cast << Faker::Creature::Animal.name
    end
    cast
end



15.times do
    Movie.create(title: Faker::Game.title, genre: genre.sample, rating: rand(1..10), description: Faker::Quotes::Shakespeare.hamlet_quote, cast: casts)
end

puts "movie sedding success"






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
