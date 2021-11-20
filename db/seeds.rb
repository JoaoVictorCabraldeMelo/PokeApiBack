# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for id in 1..700 do 
    response = HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{id}")
    pokemon = JSON.parse(response.body)
    Pokemon.create(name: pokemon["name"], image: pokemon["sprites"]["front_default"], experience: pokemon["base_experience"])
    puts pokemon["name"]
    puts pokemon["base_experience"]
    puts pokemon["sprites"]["front_default"]
end 