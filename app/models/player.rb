class Player < ApplicationRecord
    has_many :list_pokemons
    has_many :pokemons, through: :list_pokemons
    has_many :histories 
end
