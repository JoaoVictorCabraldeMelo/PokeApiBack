FactoryBot.define do
  factory :list_pokemon do
    pokemon_id { [1..10] }
    player_id { 1 }
  end
  factory :list1_pokemon, parent: :list_pokemon do
    pokemon_id { [11..20] }
    player_id { 2 }
  end 
end
